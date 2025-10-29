This file documents the setup of the UR3 at LOLab at KISD

## Components of the mobile platform

- Mobile platform by item
  - UR3 Cobot arm
  - Control cabinet (AX 105000)
    - Power Supply (Mean Well RSP-1000-48 RSP-1000-48)
    - UR Controller
    - Teach Pendant (Tablet)
  - Raspberry Pi & Ethernet Switch
  - Power Supply

## UR3 Quicklinks

- [UR3 Manual](https://s3-eu-west-1.amazonaws.com/ur-support-site/21984/UR3_User_Manual_en_Global.pdf)
- [UR Script Manual](https://s3-eu-west-1.amazonaws.com/ur-support-site/115824/scriptManual_SW5.11.pdf)

## Startup procedure

1. Switch on the platform by **switching on the multiple socket strip**. Do not plug or unplug the power supply directly into or from the wall socket.
2. **Press the Power Button** on the Teach Pendant (TP). This triggers the UR Controller to boot up (takes about 4 minutes).
3. There are two ways from here on:
   - If the controller has been in "**remote control mode**" it will now **automatically start** the robo arm and run a program (defined in the settings). Wait until you can see the `II` symbol in the lower right corner of the TP. This indeicates that a program is currently running and can be paused.
   - If the controller has been in "**local mode**" the startup needs some more manual steps (4-6)
4. On the TP, tap on the **red "Power Off"** button in the bottom left, indicating that the ur3 is not yet read for use. 
   - Tap **"ON"** in the pop-up window that now opens
   - When the arm boot-up is completed, then hit **"START"**. Brakes are now released and the ur3 should be ready for use
5. In the top bar or the TP go to **Open → Programm → and chose the ur3-bridge-main file and open it**
6. To run the programm hit the **▶️ (play) button** in the bottom right of the TP. Stay away from the tobot and click **"Play From Beginning"** in the popup. The arm will now slowly move to the starting position.

## Remote Control the Teach Pendant

A VNC Server is installed on the UR Controller ([by this script](https://forum.universal-robots.com/t/remote-desktop-to-the-controller-ui/3826/7)). Using any VNC viewer you can therefore view the TP's screen and controll it via mouse and keyboard.

- **IP:** 10.3.3.14 (static)
- **pwd:** urvnc

Note that you need to be **connected via Ethernet** directly to the mobile platform (the switch and urpi to be precise). WiFi does not (yet) work

## Remote Access via SSH

Theoretically we also have remote access to the UR Controller via SSH via Eth (10.3.3.14). **This can be dangerous and damage the UR Controller OS. Please use it only if necessary, in consultation with the LOLab and with great care.**