These are some thoughts and documentation on pIn general, the setup via Ethernet is quite fast. For example, a "getPose" request is answered in about 10 ms on average (MaxMSP on macOS via UDP on Ethernet).rformance aspects of the bridge. 

## General Concept

```
client → UDP/MQTT → "URPi" (Python on Raspberry Pi) → TCP → UR3
```

Commands are sent with either MQTT or UDP to the URPi which runs the bridge. From there they are forwarded via TCP to the UR3 controller.

### UDP

UDP is chosen because it is available natively without installing packages in many environments like [MaxMSP](https://docs.cycling74.com/learn/articles/communicationschapter03/), [puredata](https://pd.iem.sh/objects/netsend/), Python, C++, etc. It is fast, but lossy (delivery is not guaranteed). 

**Main disadvantage of UDP is that it's a point-to-point protocol.** Unlike MQTT's publish/subscribe model, UDP doesn't natively support multiple subscribers monitoring the same communication flow, which makes debugging and monitoring more difficult. This is why there is a second option for interfacing: MQTT.

### MQTT

MQTT is fast (enough), reliable (which might be important if certain movements **must** happen), and has the main advantage of having a publish/subscribe structure that allows multiple clients to send and listen to the same communication flow. You can establish monitoring apps that e.g. run on a separate device just showing stats and debugging messages via WiFi.

However, coming from IoT, sensors, and home automation, it is not so widespread in areas of robotics or audio/video (where e.g. MaxMSP is located). Therefore you often need to install extra software which makes it difficult to get started quickly.

### URPi

On a Raspberry Pi there is a Python script (see `/src`) that acts as the bridge. 

### TCP + URscript

There are multiple ways to interface with the robot arm (interpreter mode, RTDE, ...) which all have disadvantages and require dependencies (that are sometimes broken/unavailable, see RTDE on macOS). This is the whole reason why this project exists: to create an easy interface that can be used with beginner-friendly programming environments like MaxMSP.

On the UR3 a URScript application is running that handles incoming TCP messages from the URPi in separate threads and controls the robot arm (high frequencies needed to do that smoothly).

# Hardware and Networking

You can use computers, smartphones and microcontrollers to control the robot arm simultaneously – a big advantage of the bridge. Check the overview graphs in the main README for a better understanding of the possibilities. Here we only discuss performance.

## WiFi

Theoretically the Raspberry Pi can connect to any WiFi (easily done via VNC) and then bridges the local Ethernet (10.3.3.X) with that WiFi. With that one can include multiple microcontrollers, e.g. simple safety sensors that stop/slow down the arm if a person is too close.

## Ethernet

Obviously faster and way more stable. Use this whenever you can. If you send messages at higher fps (e.g. for "smoothPose") it is essential. 

# Performance Characteristics & Bottlenecks

In general, setup via Ethernet is quite fast. For example, “getPose” in average gets answered in about 7 ms roundtrip via OSC and in 10 ms with MQTT.

```
OSC UDP → Thread Pool → TCP → UR3 Processing
   ~1ms      ~1ms      ~1ms     Variable
```

Requesting “getStatus” (same total roundtrip times) shows how long the UR3 needed to respond back to the URPI when requested. This is usually <2ms.

**The UR3 is in any case the bigger bottleneck.** Depending on the use case you **want** it to queue all commands (e.g. the robot arm sequentially moves to specific positions which takes time) *or* to drop buffered commands if new ones arrive (e.g. you want smooth real-time movement according to sensor data with on-the-fly change of direction).

It is yet to be decided how to implement that into the URScript.



 