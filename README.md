# LEGO MindstormsEV3

![alt text](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F1402%2F8033%2Fproducts%2Fcompetitionmodel1_copy_700x700.jpg%3Fv%3D1533058720&f=1&nofb=1 "MindstormsEV3 Robot")



## **Table of Contents**

* [Sensor Information](https://github.com/Markay12/mindstormsEV3#sensor-information)
* [Helpful Links](https://github.com/Markay12/mindstormsEV3#helpful-links)
* Connect to EV3




### *Sensor Information*
----------------------

+ Sensor Port 1: N/A
+ Sensor Port 2: N/A
+ Sensor Port 3: Ultrasonic Sensor
+ Sensor Port 4: Color/Light Sensor

Motors connected to ports A and B,
Crane is connected to Port C,
Ultrasonic Motor is D


### *Helpful Links*
----------------------

https://www.mathworks.com/help/supportpkg/legomindstormsev3io/ref/readcolor.html


// How to start with automatic detection

https://education.lego.com/en-us/lessons/mindstorms-ev3/object-detection#Planitem2

//How to run the code

https://makecode.mindstorms.com/reference/sensors/ultrasonic/on-event

//set up collision alarm

https://www.mathworks.com/help/supportpkg/legomindstormsev3io/examples/build-a-collision-alarm-using-the-ev3-ultrasonic-sensor.html

! To move the robot straight forward Motor B is 3 less power than A

### *Connect to MindstormsEV3*
------------------------------

Make sure that your robot has a battery and is turned on and that the battery is connected

In addition to making sure the robots bluetooth is on as well as the device you are connected to

1. On windows or mac, navigate to your bluetooth settings and set-up a new device
2. Locate the name of your ev3 power brick (found at the top of the brick screen)
3. Connect
4. Once connected you will be prompted for a code, refer to your robot
5. Input code
6. Open "ConnectToEV3.m" file

In ConnectToEV3, run the program and it should connect MATLAB to the robot as well as play a sound and display the battery power

**Congratulations**

Your MindstormsEV3 robot should now be setup
