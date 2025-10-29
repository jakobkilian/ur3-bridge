# Set Commands

Read the README first to understand the basic structure.

## Syntax

Using the topic "/ur3/set/cmd " you can use the following list of commands to control the robot. A command consists out of two parts: the command name (short "cmd") and arguments (short "args"), divided by a colon ":". Some cmds do not need args. They can be used with or without colon.

```bash
cmd			 	# cmd without arguments
cmd: 			# this also works
cmd:arg		# cmd with argument
```

There are cmds that trigger direct action or even block other commands from being read. And there are cmds that only change settings or variables on the UR3 (e.g. moving speed).

## ALL cmds:

- If you want to use the interpreter mode [(chapter 12 here)](https://s3-eu-west-1.amazonaws.com/ur-support-site/163530/scriptmanual_5.12.pdf) instead of the interface described here: use `interpret` to **start interpreter mode and pause all other functions**. Note: Interpreter mode can only be ended by sending the character string `end_interpreter()` to the interpreter port!
- **MoveJ by using "poses" or "joints" (6 coordinates):**
  - You can send a **pose** with separate value or all together:
    - `x:`, `y:` or `z:` (arg: signed float as string): **Position** in 3D Space of the TCP (tool tip) of the UR3. Gets filled into a UR3-local variable. Does not yet trigger a movement.
    - `ax:`, `ay:` or `az:` (arg: signed float as string): **Orientation** of the TCP (tool tip) of the UR3. Gets filled into a UR3-local variable. Does not yet trigger a movement.
    - `pose:`(arg: `x,y,z,ax,ay,az`) You can also just send some of the values (starting left), e.g by sending `pose:x,y,z`. Spaces do not matter. 
  - You can send the 6 **joints** values separately or all together:
    - `j1:`, `j2:`, `j3:`, `j4:`, `j5:`, `j6:` (arg: signed float as string): All **six joints** (base, shoulder, elbow, wrist 1, 2 and 3) as rad.
    - `joints:`(arg: `j1,j2,j3,j4,j5,j6`) You can also just send some of the values (starting left), e.g by sending `pose:j1,j2`. Spaces do not matter.
  - `vel:` (arg: signed float as string): joint **speed** of leading axis [rad/s]
  - `acc:` (arg: signed float as string): joint **acceleration** of leading axis [rad/s^2]
  - `time:` (arg: signed float as string): **time** to fulfill movement in s. If used "vel" and "acc" will be ignored
  - `blend:` (arg: signed float as string): radius of **blending sphere** in m. More infos, see [chapter 14.6 in the manual](https://s3-eu-west-1.amazonaws.com/ur-support-site/21984/UR3_User_Manual_en_Global.pdf)
  - `movejPose:` (nothing, "blend", "time", "time,blend"): Triggers a moveJ using the predefined pose (x,y,z,ax,ay,az). "blend" uses the blend function. "time" ignores acc and vel and instead fulfils movement in (predefined) seconds. More infos, see [chapter 13.1.21.](https://s3-eu-west-1.amazonaws.com/ur-support-site/163530/scriptmanual_5.12.pdf)
    - **Note:** when using `movejPose` a check gets performed, if the movement has a solution. If not, the robo arm just nods left and right and send a message on "ur3/return"
  - `movejJoints:` (nothing, "blend", "time", "time,blend"): Triggers a moveJ using the predefined joint values (j1,j2,j3,j4,j5,j6). "blend" uses the blend function. "time" ignores acc and vel and instead fulfils movement in (predefined) seconds. More infos, see [chapter 13.1.21.](https://s3-eu-west-1.amazonaws.com/ur-support-site/163530/scriptmanual_5.12.pdf)
- **Get positional information from UR3:**
  - `getPose` (no arg!): returns the current position as pose (in the form of "pose:p[x,y,z,ax,ay,az]") to "ur3/get/val".
  - `getJoints` (no arg!): returns the current position as joints values (in the form of "joints:[j1,j2,j3,j4,j5,j6]") to "ur3/get/val".
  - `getForce` (no arg!): returns the force that currently is applied to the TCP (in the form of "forces:[?]") to "ur3/get/val".
- **Set robo into freedrive mode**
  - `free:start` (no arg!): sets robo into freedrive mode. MoveJ won't work anymore. You can now move it to a new position and e.g. use `getPose`
  - `free:end` (no arg!): sets robo back into normal operation.
- **Interrupt / slow down movement**:
  - `pause:` (no arg!): reduces speed of every movement of the cobot to 10%. Can be used to stop movements, if a crash would occur
  - `continue:` (no arg!): sets back speed after `pause:` 

