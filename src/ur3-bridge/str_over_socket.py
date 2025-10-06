import socket
import time
import struct

import paho.mqtt.client as mqtt

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
PORT = 1883
USERNAME = "ur3mqtt"
PASSWORD = "lolab"
TOPIC_UR_SET = "ur3/set/"
TOPIC_UR_GET = "ur3/get/"
TOPIC_RETURN = "ur3/return"
TOPIC_DEBUG = "ur3/debug"

# UR3-Details
ROBOT_IP = "10.0.0.3"

def ur3Send(thisClient, message):
    success = thisClient.send(bytes(message, 'ascii') + b'\n')
    if success:
        #print_and_publish(0, client, "Sent data: {}".format(message))
        test = 1
    else:
        print_and_publish(0, client, "Failed to send: {}".format(message))

##### MQTT Callbacks ##### 
# --- connect ---
def on_connect(client, userdata, flags, rc):
    client.subscribe(TOPIC_UR_SET + "#", 0)
    print_and_publish(0, client, "Connection to MQTT broker established\n")

# --- print + publish ---
def print_and_publish(isDebug, client, message):
    if (isDebug):
        client.publish(TOPIC_DEBUG, message)
        if (printDebug):
            print(message)
    else: 
        client.publish(TOPIC_RETURN, message)
        print(message)

# --- incoming msg ---
def on_message(client, userdata, msg):
    if socketOpen:
        #print_and_publish(1, client, "Received MQTT message: {}".format(msg.payload.decode("utf-8")))

        try:
            # Move To Position (preprogrammed)
            #if msg.topic == TOPIC_UR_SET + "move_pos":
                #position = int(msg.payload.decode("utf-8"))
                #success = c.send(b"int:" + bytes(str(position)) + b'\n')
                #if success:
                    #print_and_publish(1, client, "Updated position to: {}".format(position))
                #else:
                    #print_and_publish(1, client, "Failed to update position")
            if msg.topic == TOPIC_UR_SET + "cmd":
                ur3Send(connection, str(msg.payload.decode("utf-8")))
            else:
                raise Exception("This command has not been defined")
        except Exception as e:
            print_and_publish(0, client, "Error executing command: {}".format(str(e)))
    else:
        print_and_publish(0, client, "No socket, can't send data")

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
    print_and_publish(0, client, "UR3 socket established\n")
    return True

def process_msg(firstConnection, client, msg):
    global connection, lastConnectionTimer
    # divide message in two parts: before ":" and after ": and keep the second part as "val"
    # if there is no ":", the whole message is the first part

    if ":" in msg:
        urReturn, cmdString = msg.split(":", 1)
        if ":" in cmdString:
            cmd,val  = cmdString.split(":",1)
    else:
        urReturn = msg
        val = ""

    if urReturn == "ur3Online":
        lastConnectionTimer = time.perf_counter()
        print_and_publish(firstConnection, client, "Got online flag from UR3!")
        firstConnection = True
        connection.send(b"rpiOnline\n")
    elif urReturn == "cmdReceived": # return every received command. For debugging and round-trip time measurement
        print_and_publish(1, client, "Received a cmd: {}".format(cmdString))
    elif urReturn == "returnValues":
        client.publish(TOPIC_UR_GET + "val", cmdString)
    elif urReturn == "return":
        print_and_publish(0, client, "Return: {}".format(cmdString))

    return lastConnectionTimer, firstConnection

# Message listening loop
while True:
    socketOpen = False
    firstConnection = False
    lastConnectionTimer = 0
    ##### MAIN Part ##### 
    # Connect to MQTT Broker (local)
    client = mqtt.Client()
    client.username_pw_set(USERNAME, password=PASSWORD)
    client.on_connect = on_connect
    client.on_message = on_message

    # Check MQTT Connection
    try:
        print_and_publish(0, client, "connecting to MQTT...")
        client.connect(BROKER, PORT, 60)
        client.loop_start()
    except Exception as e:
        print_and_publish(0, client, "Error connecting to MQTT: {}".format(str(e)))
    time.sleep(0.1)

    # Open Socket, establish connection, wait for msg from UR3
    socketOpen = open_socket_connection(SOCKET_HOST, SOCKET_PORT, print_and_publish, client)
    if (socketOpen == False):
        continue

    # If msg is "go" -> infinite loop + give control to MQTT callbacks
    try:
        while True:
            msg = (connection.recv(1024)).decode()
            lastConnectionTimer, firstConnection = process_msg(firstConnection, client, msg)
            #time.sleep(0.01)
            if (time.perf_counter() - lastConnectionTimer) > TIMEOUT_LIMIT_SECONDS:
                raise Exception("Didn't receive online msg from UR")
    except socket.error as socketerror:
        print("Lost Connection - Attempting to Reconnect")
        connection.close()  # Close the socket connection
        socket_connection.close()  # Close the server socket
    except Exception as error:
        print('Caught this error: ' + repr(error))
        connection.close()  # Close the socket connection
        socket_connection.close()  # Close the server socket