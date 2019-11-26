# LEGO MindstormsEV3

![alt text](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F1402%2F8033%2Fproducts%2Fcompetitionmodel1_copy_700x700.jpg%3Fv%3D1533058720&f=1&nofb=1 "MindstormsEV3 Robot")



## **Table of Contents**

* [Sensor Information](https://github.com/Markay12/mindstormsEV3#sensor-information)
* [Helpful Links](https://github.com/Markay12/mindstormsEV3#helpful-links)
* [LEGO EV3 MATLAB Documentation](https://github.com/Markay12/mindstormsEV3#lego-ev3-matlab-documentation)
* [Connect to EV3](https://github.com/Markay12/mindstormsEV3#connect-to-mindstormsev3)
* [Sensor Information](https://github.com/Markay12/mindstormsEV3#sensor-files)
* [Test Key Control](https://github.com/Markay12/mindstormsEV3#test-key-control)
* [Autonomous Control](https://github.com/Markay12/mindstormsEV3#autonomous-control)


### *Sensor Information*
----------------------

+ Sensor Port 1: N/A
+ Sensor Port 2: N/A
+ Sensor Port 3: Ultrasonic Sensor
+ Sensor Port 4: Color/Light Sensor

* Motors connected to ports A and B
* Crane is connected to Port C


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



### *LEGO EV3 MATLAB Documentation*
---

You can find all current MATLAB documentation for the LEGO EV3 utility files implemented in this class at the following [this](https://sites.google.com/a/asu.edu/fse100-cse-wiki/ev3-matlab-library-documentation)

You may also find the following files useful for programming your robot:

* Installing MATLAB and EV3 utility files on your personal computer-
[Personal Machine Software](https://github.com/Markay12/mindstormsEV3/blob/master/Personal%20Machine%20Software%20Install.pdf)
[EV3 Toolbox](https://github.com/Markay12/mindstormsEV3/blob/master/EV3_Toolbox.zip)

* [Introduction to EV3](https://github.com/Markay12/mindstormsEV3/blob/master/Introduction%20to%20EV3.pdf)

* [Keyboard Control](https://github.com/Markay12/mindstormsEV3/blob/master/Keyboard%20Control.pdf)

* [Sensors](https://github.com/Markay12/mindstormsEV3/blob/master/Sensors.pdf)







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




### *Sensor Files*
----------------------

The first file to test the sensor is **_touchSwitch_** which was used to test the touch Sensor

* includes set-up syntax
* different modes
* output values
* uses and practical applications

**_colorSensor_**

* includes how to set-up the color sensor
* four different modes included
1. ambientLight
2. colorCode
3. colorRGB
4. lightReflect
* returns values to understand applications

**_Ultrasonic_**

* The main sensor used
* Shows the setup and ```brick.UltrasonicDist(motor)```
* includes code to use in autonomous program





### *Test Key Control*
---

This file tests the use of the key controls and using the keyboard to control the robot

* Uses keys to make the robot move in all directions
* Use keys 'w' and 's' to raise and lower the crane accordingly
* Main first use to controlling the robot

### *Autonomous Control*
---

Learning autonomous control was one of the most challenging parts of this Mindstorms EV3 project

Working on the While loops was a struggle as we knew what we wanted the robot to do, but we were telling it to do something else. Lot's of extra work was needed to be put into the robot to allow it to run on it's own

#### __How to run your Robot Autonomously (Like a Roomba)__

1. Make sure that you load [ConnectToEV3](https://github.com/Markay12/mindstormsEV3#connect-to-mindstormsev3)
2. Once done locate the Main.m file within the [automation](https://github.com/Markay12/mindstormsEV3/tree/master/automation) folder
3. Press F5 on the program, or just run within the view tab
4. On the pop-up window press the 'up-arrow' on your keyboard to start

**_Challenge with the While Loop_**

* This is the basis for our while loop and understanding of it:

```
MATLAB

global key;
InitKeyboard();

startMoving = 0;

while 1
    pause(0.1);
    distance = brick.UltrasonicDist(3);

    switch key

        case 'uparrow' % on the up arrow, the auto-driving will begin

            while(startMoving == 0)

                distance = brick.UltrasonicDist(3);

                if (distance > 15)

                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 47);
                    numRightTurns = 0;
                    numLeftTurns = 0;

                    distance = brick.UltrasonicDist(3);

                elseif (distance < 15)

                    % turn left

                    brick.MoveMotor('A', 27);
                    brick.MoveMotor('B', -27);
                    pause(0.875);
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    numLeftTurns = 1;

                    distance = brick.UltrasonicDist(3);
                    disp(distance);

                end
            end

        end
    end
end

```

* Our first large problem was with the startMoving variable at the beginning. Without this the while loop would not run the way we want it to and would stop before the program would move through the while-loop
* The next was the order in which to run through the while loop, much similar to ``` Exception ``` within Java, where the order in which you place certain loops matters. We need to make sure the robot moves further before it checks new locations
* The next thing that we need to work towards is getting the robot to move in a straight line as the motors and wheels are not centered correctly

### *Our MindstormsEV3 Mission*
---
