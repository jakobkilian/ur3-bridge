# Example Applications

To demonstrate application uses of the bridge there are applications in the [examples directory](../examples). 

## MaxMSP

The biggest example is currently built in [MaxMSP](https://docs.cycling74.com/learn/articles/communicationschapter03/) as it has native support for OSC and a GUI that can be used for fast prototyping. It is planned to also provide a pure data version of this, which proofed to be a bit more complicated to write.

The example is pretty self-explanatory. It provides a basic setup to retrieve online status and roundtrip time, enables remote activation of free drive and has an interface to request, save and then call UR3 joints and poses. 

Two advanced applications are implemented in the patch: one follows the closest object in range in real time, the other acts as a drawing bot taking in 2D coordinates:

https://github.com/user-attachments/assets/cf530003-c5e4-409b-82cf-cb6f08d3dad7 