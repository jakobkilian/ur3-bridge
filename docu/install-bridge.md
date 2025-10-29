
---

**Prerequisites:**
This guide assumes you have already set up your Raspberry Pi following [this tutorial](https://github.com/jakobkilian/raspi-setup), all steps were successful, and you were able to send MQTT messages. This document now details the setup of the ur3-bridge.

---

## 1. Set Static IP for the UR3 Robo Arm

To assign a static IP to your UR3 robot arm, you first need its MAC address. You can find it in your router's device list or by running the following command on a Linux computer in the same network (e.g., your Raspi):

```sh
ip neigh
```

Look for the entry that matches your UR3's IP address (you can see the UR3 Address in it's network settings: top right corner menu → settings → system → network). The MAC address will be listed next to it.

Next, add a static IP mapping for the UR3:

```sh
sudo nano /etc/dnsmasq.conf
```

Add this line to the end of the file (replace the MAC address with yours):

```sh
dhcp-host=00:30:d6:2e:b1:fd,10.3.3.14
```

Restart dnsmasq to apply the changes:

```sh
sudo systemctl restart dnsmasq
```

## 2. Download and Install ur3-bridge

We need Git to download the ur3-bridge files:

````sh
sudo apt-get install git -y
````

````sh
git clone https://github.com/jakobkilian/ur3-bridge
````


Go to the src folder. The rest of this guide expects you to be in this directory!

````sh
cd ~/ur3-bridge/src/ur3-bridge
````


Edit the username in the path of the service file if needed (default is "home/dietpi/"):

````sh
sudo nano systemd-ursim.service
````

Next, install Miniforge (a minimal conda installer):

````sh
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh
bash Miniforge3-Linux-aarch64.sh
````


Reload the shell after installation:

````sh
source ~/.bashrc
````


Now create an environment that includes MQTT and sets a fixed Python version:

````sh
conda env create -f environment.yml
````


Finally, test if everything is up and running by launching the bridge:

````sh
./start.sh 
````


You should now receive "urpionline" on the topic "urpi/online" on your remote machine via MQTT.


Finally: make the Raspi auto-launch this as a service:

````sh
sudo mv systemd-ursim.service /etc/systemd/system/systemd-ursim.service
sudo systemctl daemon-reload
sudo systemctl start systemd-ursim
sudo systemctl enable systemd-ursim
````

Now the "urpionline" should also appear after a fresh reboot...
