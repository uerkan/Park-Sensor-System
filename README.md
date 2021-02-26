# Park-Sensor-System

Car park sensor system is a system that is very useful and is found in almost all modern cars with
varying degrees of functionality. It helps users to detect the obstacles around their car, slow down as
the obstacle gets closer, and fully stop if the predetermined distance value is exceeded. In this
project, a car park sensor system that cooperates with driving safety components is implemented.

The system is built using a TM4C123G board as base, HC-SR04 as ultrasonic sensor, NOKIA 5110
LCD Screen as user interface device, a potentiometer as threshold value adjuster, and a stepper
motor to represent the car motor. This system uses the ultrasonic sensor to measure the distance
from an obstacle. When the obstacle gets closer to the sensors, the brakes are engaged
proportionally depending on the current threshold value. The motor is fully stopped when this
threshold is exceeded. To change the threshold value, one can press SW1 on TM4C123G board and
switch to threshold setting state. The potentiometer is used here to change the threshold value by
adjusting it between 0 and 999 mm. A second press on SW1 will return the operation to normal
state. Moreover, if the motor is in preventative braking state, SW2 on board can be used to reset the
operation and return to the normal state. In this way, the user can remove the braking condition to
continue driving the car.

User interface is designed using NOKIA 5110 to show the state of the system, current distance
measurement, threshold value and a progress bar to help the user to visualize the environment
around the car. Moreover, in threshold setting state, the user is able to see the current threshold
value while it is being adjusted.
