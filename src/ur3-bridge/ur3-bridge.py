import socket
import time
import struct
import threading
from typing import Dict, Set

import paho.mqtt.client as mqtt
from pythonosc import dispatcher
from pythonosc import udp_client
from pythonosc.osc_server import ThreadingOSCUDPServer
import socketserver

printDebug = False
socketOpen = False
connection = None
socket_connection = None
lastConnectionTimer = None

# Socket-Details
SOCKET_HOST = "0.0.0.0" # This computer (the Raspi)
SOCKET_PORT = 30001 # The same port as used on the UR3

TIMEOUT_LIMIT_SECONDS = 5

# MQTT-Details
BROKER = "localhost"
PORT = 1884 # Default MQTT port is 1883, using 1884 to access locally without password
USERNAME = "ur3mqtt"
PASSWORD = "lolab"
TOPIC_UR_SET = "ur3/set/"
TOPIC_UR_GET = "ur3/get/"
TOPIC_RETURN = "ur3/return"
TOPIC_DEBUG = "ur3/debug"
TOPIC_UR3ONLINE = "ur3/online"
TOPIC_URPIONLINE = "urpi/online"
TOPIC_UR3STATUS = "ur3/status"

# OSC-Details
OSC_PORT = 8000
OSC_HOST = "0.0.0.0"

# OSC Session Management
osc_clients: Dict[str, float] = {}  # IP -> last_seen_timestamp
osc_pending_responses: Dict[str, str] = {}  # command -> response_ip
osc_server = None
osc_server_thread = None

# Status tracking for getStatus command
status_request_timestamp = None
status_request_sender_ip = None

# Custom OSC Server that captures client IP addresses
class IPCapturingOSCUDPServer(ThreadingOSCUDPServer):
    def __init__(self, server_address, dispatcher):
        super().__init__(server_address, dispatcher)
        self.current_client_ip = None
    
    def verify_request(self, request, client_address):
        # Store the client IP for use in handlers
        self.current_client_ip = client_address[0]
        return super().verify_request(request, client_address)

def ur3Send(mqtt_client_ref, message, protocol="MQTT", sender_ip=None):
    """Send message to UR3 with protocol identification"""
    global connection
    success = connection.send(bytes(message, 'ascii') + b'\n')
    if success:
        print_and_publish(1, mqtt_client_ref, f"[{protocol}] Sent to UR3: {message}")
    else:
        print_and_publish(0, mqtt_client_ref, f"[{protocol}] Failed to send: {message}")

##### MQTT Callbacks ##### 
# --- connect ---
def on_connect(client, userdata, flags, rc):
    client.subscribe(TOPIC_UR_SET + "#", 0)
    print_and_publish(0, client, "Connection to MQTT broker established")

# --- print + publish ---
def print_and_publish(isDebug, client, message):
    if (isDebug):
        client.publish(TOPIC_DEBUG, message)
        if (printDebug):
            print(message)
    else: 
        client.publish(TOPIC_RETURN, message)
        print(message)

# --- incoming mqtt msg ---
def on_message(client, userdata, msg):
    if msg.topic == TOPIC_UR_SET + "cmd":
        command = str(msg.payload.decode("utf-8"))
        process_unified_command(command, protocol="MQTT", sender_ip=None, mqtt_client_ref=client)
    else:
        print_and_publish(0, client, "This MQTT command has not been defined")

##### OSC Functions #####

def send_osc_to_client(client_ip: str, address: str, *args):
    """Send OSC message back to a specific client"""
    try:
        client = udp_client.SimpleUDPClient(client_ip, OSC_PORT)
        client.send_message(address, args)
        print_and_publish(1, mqtt_client, f"[OSC] Sent to {client_ip}: {address} {args}")
    except Exception as e:
        print_and_publish(1, mqtt_client, f"[OSC] Failed to send to {client_ip}: {e}")

##### OSC Message Handlers #####

def handle_osc_cmd(unused_addr, *args):
    """Handle OSC commands: /ur3/set/cmd [command]"""
    global osc_pending_responses, osc_server
    
    if len(args) < 1:
        print_and_publish(1, mqtt_client, "[OSC] Invalid command format. Expected: /ur3/set/cmd [command]")
        return
    
    command = args[0]
    
    # Get sender IP from the custom server
    sender_ip = None
    if hasattr(osc_server, 'current_client_ip'):
        sender_ip = osc_server.current_client_ip
    
    print_and_publish(1, mqtt_client, f"[OSC] Command: {command}, Sender IP: {sender_ip}")
    
    # Check if this command expects a response and store sender IP
    response_commands = ["getPose", "getJoints", "getStatus", "getOnline"]
    if sender_ip and any(cmd in str(command) for cmd in response_commands):
        command_type = next((cmd for cmd in response_commands if cmd in str(command)), str(command))
        osc_pending_responses[command_type] = sender_ip
        print_and_publish(1, mqtt_client, f"[OSC] Will send response for {command_type} to {sender_ip}")
    
    # Use unified command processing
    process_unified_command(str(command), "OSC", sender_ip, mqtt_client)

def setup_osc_server():
    """Setup OSC server with message handlers"""
    global osc_server, osc_server_thread
    
    # Check if server is already running
    if osc_server is not None:
        print(f"[OSC] Server already running on {OSC_HOST}:{OSC_PORT}")
        return True
    
    disp = dispatcher.Dispatcher()
    
    # Map OSC addresses to handler functions - mirror MQTT structure exactly
    disp.map("/ur3/set/cmd", handle_osc_cmd)  # Main command interface - same as MQTT
    
    # Generic fallback handler
    def default_handler(unused_addr, *args):
        print_and_publish(1, mqtt_client, f"[OSC] Unhandled message: {unused_addr} {args}")
    
    disp.set_default_handler(default_handler)
    
    try:
        osc_server = IPCapturingOSCUDPServer((OSC_HOST, OSC_PORT), disp)
        osc_server_thread = threading.Thread(target=osc_server.serve_forever)
        osc_server_thread.daemon = True
        osc_server_thread.start()
        print_and_publish(1, mqtt_client, f"[OSC] Server started on {OSC_HOST}:{OSC_PORT}")
        return True
    except Exception as e:
        print_and_publish(1, mqtt_client, f"[OSC] Failed to start server: {e}")
        return False

# --- unified command processing ---
def process_unified_command(command, protocol, sender_ip=None, mqtt_client_ref=None):
    """
    Unified command processing for both OSC and MQTT protocols.
    
    Args:
        command: The command string to process
        protocol: Either "OSC" or "MQTT"
        sender_ip: IP address for OSC responses (None for MQTT)
        mqtt_client_ref: MQTT client reference for debug output
    """
    global status_request_timestamp, status_request_sender_ip, lastConnectionTimer
    
    # Handle getOnline command first - should work even without socket connection
    if command == "getOnline":
        if lastConnectionTimer and (time.perf_counter() - lastConnectionTimer) <= TIMEOUT_LIMIT_SECONDS:
            response_msg = "true"
        else:
            response_msg = "false"
        
        # Send response based on protocol
        if protocol == "MQTT" and mqtt_client_ref:
            mqtt_client_ref.publish(TOPIC_UR_GET + "val", f"getOnline:{response_msg}")
        elif protocol == "OSC" and sender_ip:
            send_osc_response(sender_ip, "/ur3/isOnline", response_msg)
        
        print_and_publish(1, mqtt_client_ref, f"[{protocol}] UR3 online check: {response_msg}")
        return  # Don't send to UR3
    
    if not socketOpen:
        error_msg = f"No UR3 socket, can't send {protocol} data"
        print_and_publish(0, mqtt_client_ref, error_msg)
        return
    
    try:
        # Handle special getStatus command
        if command == "getStatus":
            status_request_timestamp = time.time()
            status_request_sender_ip = sender_ip  # Store sender IP for OSC responses
            try:
                connection.send(b"getStatus\n")
                print_and_publish(1, mqtt_client_ref, f"[Status] Sent getStatus to UR3 (via {protocol})")
            except Exception as e:
                print_and_publish(1, mqtt_client_ref, f"[Status] Failed to send getStatus to UR3: {e}")
                # Send failure response
                status_msg = "URPI:online; UR3:offline; Can't reach UR3."
                
                # Respond via both protocols for OSC, only MQTT for MQTT
                if mqtt_client_ref:
                    mqtt_client_ref.publish(TOPIC_UR3STATUS, status_msg)
                if protocol == "OSC" and sender_ip:
                    send_osc_response(sender_ip, "/ur3/status", status_msg)
        else:
            # Handle all other commands normally
            ur3Send(mqtt_client_ref, command, protocol, sender_ip)
            
    except Exception as e:
        error_msg = f"Error executing {protocol} command: {str(e)}"
        print_and_publish(0, mqtt_client_ref, error_msg)

def send_osc_response(sender_ip, address, message):
    """Send OSC response message to specified IP address"""
    try:
        osc_client = udp_client.SimpleUDPClient(sender_ip, OSC_PORT)
        osc_client.send_message(address, message)
        print_and_publish(1, mqtt_client, f"[OSC] Sent response to {sender_ip}: {address} {message}")
    except Exception as e:
        print_and_publish(1, mqtt_client, f"[OSC] Failed to send response to {sender_ip}: {e}")

def send_unified_response(topic, osc_address, message, sender_ip=None, protocol=None):
    """Send unified response via both MQTT and OSC (if applicable)"""
    # Always send MQTT response
    if mqtt_client:
        mqtt_client.publish(topic, message)
    
    # Send OSC response if sender IP is available and protocol is OSC
    if sender_ip and protocol == "OSC":
        send_osc_response(sender_ip, osc_address, message)

##### UR3 Socket Functions #####

def open_socket_connection(SOCKET_HOST, SOCKET_PORT, print_and_publish, client):
    global connection, socket_connection
    try:
        print_and_publish(0, client, "connecting to UR3 socket...")
        socket_connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        socket_connection.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        socket_connection.bind((SOCKET_HOST, SOCKET_PORT)) # Bind to the port
        socket_connection.listen(5) # Now wait for client connection
        connection, _ = socket_connection.accept() # Establish connection with client
    except Exception as e:
        print_and_publish(0, client,"Error connecting to UR3 vis socket: {}".format(str(e)))
        return False
    print_and_publish(0, client, "UR3 socket established")
    return True

def process_msg(firstConnection, client, msg):
    global connection, lastConnectionTimer, osc_pending_responses, status_request_timestamp, status_request_sender_ip
    # divide message in two parts: before ":" and after ": and keep the second part as "val"
    # if there is no ":", the whole message is the first part

    if ":" in msg:
        urReturn, cmdString = msg.split(":", 1)
        if ":" in cmdString:
            cmd,val  = cmdString.split(":",1)
    else:
        urReturn = msg
        cmdString = ""

    if urReturn == "ur3Online":
        lastConnectionTimer = time.perf_counter()
        #print_and_publish(firstConnection, client, "Got online flag from UR3!")
        firstConnection = True
        connection.send(b"rpiOnline\n")
        
        # Send UR3 online status to MQTT
        client.publish(TOPIC_UR3ONLINE, "ur3online")
        
    elif urReturn == "gotStatus":
        # Handle getStatus response
        if status_request_timestamp is not None:
            roundtrip_time = (time.time() - status_request_timestamp) * 1000  # Convert to ms
            status_msg = f"URPI:online; UR3:online; UR3roundtrip:{roundtrip_time:.1f}ms"
            
            # Send unified response (MQTT always, OSC if sender IP available)
            send_unified_response(TOPIC_UR3STATUS, "/ur3/status", status_msg, status_request_sender_ip, "OSC" if status_request_sender_ip else "MQTT")
            
            print_and_publish(1, mqtt_client, f"[Status] {status_msg}")
            
            # Reset status request tracking
            status_request_timestamp = None
            status_request_sender_ip = None
        
    elif urReturn == "cmdReceived": # return every received command. For debugging and round-trip time measurement
        print_and_publish(1, client, "Received a cmd: {}".format(cmdString))
        
    elif urReturn == "returnValues":
        # Always send MQTT response (for both OSC and MQTT clients)
        client.publish(TOPIC_UR_GET + "val", cmdString)
        
        # Check if this is for getPose or getJoints from OSC client
        for command_type, response_ip in list(osc_pending_responses.items()):
            if command_type in ["getPose", "getJoints"]:
                send_osc_response(response_ip, f"/ur3/{command_type}", cmdString)
                # Remove the pending response
                del osc_pending_responses[command_type]
                break
        
    elif urReturn == "return":
        print_and_publish(0, client, "Return: {}".format(cmdString))

    return lastConnectionTimer, firstConnection

##### Main Program #####

def urpi_heartbeat():
    """Send URPi online heartbeat every second"""
    while True:
        try:
            mqtt_client.publish(TOPIC_URPIONLINE, "urpionline")
            time.sleep(1)
        except Exception as e:
            print_and_publish(1, mqtt_client, f"[Heartbeat] Error sending URPi heartbeat: {e}")
            time.sleep(1)

mqtt_client = None

# Setup MQTT Client once (outside the reconnection loop)
print("Setting up MQTT client...")
mqtt_client = mqtt.Client()
mqtt_client.username_pw_set(USERNAME, password=PASSWORD)
mqtt_client.on_connect = on_connect
mqtt_client.on_message = on_message

# Connect to MQTT Broker once
try:
    print("Connecting to MQTT broker...")
    mqtt_client.connect(BROKER, PORT, 60)
    mqtt_client.loop_start()
    print("MQTT client connected and started")
    
    # Start URPi heartbeat thread
    heartbeat_thread = threading.Thread(target=urpi_heartbeat)
    heartbeat_thread.daemon = True
    heartbeat_thread.start()
    print("URPi heartbeat started")
    
except Exception as e:
    print(f"Error connecting to MQTT: {str(e)}")
    # Create a dummy mqtt_client for print_and_publish function if MQTT fails
    class DummyMQTTClient:
        def publish(self, topic, message):
            pass  # Do nothing
    mqtt_client = DummyMQTTClient()

# Setup OSC Server once (after MQTT is initialized)
print("Setting up OSC server...")
if not setup_osc_server():
    print("Failed to setup OSC server, continuing with MQTT only...")

# Message listening loop (only for UR3 socket reconnection)
while True:
    socketOpen = False
    firstConnection = False
    lastConnectionTimer = None  # Reset to None instead of 0
    
    print_and_publish(1, mqtt_client, "Attempting to connect to UR3...")
    
    # Open Socket, establish connection, wait for msg from UR3
    socketOpen = open_socket_connection(SOCKET_HOST, SOCKET_PORT, print_and_publish, mqtt_client)
    if (socketOpen == False):
        print_and_publish(1, mqtt_client, "Failed to connect to UR3, retrying in 5 seconds...")
        time.sleep(5)
        continue

    print_and_publish(0, mqtt_client, "OSC+MQTT Bridge ready. OSC: /ur3/set/cmd on port 8000, MQTT: ur3/set/cmd topic")

    # Main message processing loop
    try:
        while True:
            msg = (connection.recv(1024)).decode()
            lastConnectionTimer, firstConnection = process_msg(firstConnection, mqtt_client, msg)
            
            if (time.perf_counter() - lastConnectionTimer) > TIMEOUT_LIMIT_SECONDS:
                raise Exception("Didn't receive online msg from UR")
                
    except socket.error as socketerror:
        print_and_publish(1, mqtt_client, "Lost UR3 Connection - Attempting to Reconnect in 5 seconds...")
        # No OSC status messages
        try:
            connection.close()  # Close the socket connection
            socket_connection.close()  # Close the server socket
        except:
            pass  # Ignore cleanup errors
        time.sleep(5)  # Wait before reconnecting
    except Exception as error:
        print_and_publish(1, mqtt_client, 'Caught this error: ' + repr(error))
        # No OSC status messages
        try:
            connection.close()  # Close the socket connection
            socket_connection.close()  # Close the server socket
        except:
            pass  # Ignore cleanup errors
        time.sleep(5)  # Wait before reconnecting
