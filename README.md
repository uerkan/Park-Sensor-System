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

User interface is designed using NOKIA 5110 to show the state of the system, current distance
measurement, threshold value and a progress bar to help the user to visualize the environment
around the car. Moreover, in threshold setting state, the user is able to see the current threshold
value while it is being adjusted.

Requirements:

1. The user should be able to see the currently configured distance threshold on the screen in millimeters with 3 decimal digits.
2. The user should be able to see the currently measured distance on the screen in millimeters with
3 decimal digits.
3. Distances are to be shown in millimeter units with three decimal digits. e.g.: 111 mm. The
maximum distance should be limited to 999 mm.
4. The user should be able to see the currently measured distance on the screen as a progress bar at
the bottom of the screen which visually indicates the current distance and the threshold to scale
between 0 mm and 999 mm.
5. During normal operation mode, the threshold will stay constant and only the measurements will
be updated. The threshold will only be changed in threshold setting mode. 
6. The user will press the onboard button SW1 to enter threshold setting mode. In this mode, the
thresholds proposed value will be read from the potentiometer and viewed on the screen frequently
while the user is adjusting. A second press to SW1 will set the threshold and exit threshold setting
mode.
7. During normal operation, when the threshold is exceeded, the system will enter the preventative
braking mode. 
8. The user should be visually informed when the preventative brakes are engaged. The visual indication could be text based or any other reasonably sized visual indication that can be clearly read or seen by the user. For example, when the brakes are engaged, the display could say "BRAKE ON"
or it could be filled with completely dark pixels.
9. The user should be able to remove (reset) the preventative braking state by pressing the onboard
button SW2.
10. The stepper motor should continuously rotate in normal operation mode, that is, as long as the
threshold is not exceeded after a reset. The motor should be stopped if the preventative brakes
are engaged and stay still until the system is reset (by pressing SW2, not to be confused with the
global reset button).
11. The step motor speed could be adjusted according to the distance to obstacle. The motor should slow down as the obstacle gets closer to the threshold, and come to a full
stop when the threshold is reached as dictated by the previous requirement.
