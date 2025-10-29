# Technical Details

## The Network

This network diagram shows the general structure of the network: 

- On the right side there is the "Mobile UR3 Trolley" with the UR3 controller, the robo arm itself and the "URPi" (described above and below). You can connect to it via ethernet and simply get an IP adress from the DHCP server on the "URPi".

- To be as flexible as possible, you also can log the "URPi" into any WiFi Router, it will connect (forward) its local ethernet network with it and allow clients to send messages

- Clients can be pretty much anything that is able to send MQTT/OSC to the "URPi" via the external Router.


![network](img/ur3-bridge-network.jpg)

## The "URPi"

The Raspberry Pi in the control cabinet of the mobile UR3 trolley is called **URPi**. It boots automatically and then acts as central part of the Interface. 

It takes care of the following tasks:

- **Ethernet Network Router**
  - Acts as DHCP and DNS server. Gives IP addresses and manages hostnames
  - IP range is 10.3.3.255 and therefore unlikeley to overlap with other networks
  - Gives static IP Adress (10.3.3.14) for the UR3 by MAC Address
- **Network Link** (can be connected to a WiFi network as well with an external router)
- **Mosquitto** **MQTT Broker** (see below)
- **Bridge to the UR3 Controller** by using "ur3-bridge.py" script (see below)

### Mosquitto MQTT Broker on the URPi

The URPi runs a [Mosquitto](https://mosquitto.org/) MQTT Broker. Therefore messages published to the RPi (in every network it is connected to – e.g. Ethernet or WiFi) will be received and handled. 

### Python Script on URPi

On the URPi the `ur3-bridge.py` script is located in the `src` directory of this repo

#### Running the Script

The script automatically runs as a systemd service launching the attached script [start.sh](../src/mqtt-to-ur3-socket/start.sh)

#### Checking Script Status

To check the status of the script

`sudo systemctl status systemd-ursim.service`

#### Error Handling

The script has basic error handling for MQTT and socket connection issues. If an error occurs, it will be published to the `ur3/return` topic.

