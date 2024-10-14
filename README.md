# Throttle Master Firmware (1.0.0)

This **firmware** is your pit crew for **DIY** racing sim rigs, built exclusively for **ATmega32U4** microcontrollers. It handles the ***H-Shifter***, ***900° steering wheel*** (no force feedback for 1.0.0), and ***floor pedals***. The firmware is built to keep the hardware compact & portable so that you could also enjoy playing in your classroom sitting at the back. Build yourself & sprinkle our firmware to it & finally get rid of **WASD** with just few bucks!<br>

<a href='https://twitter.com/OrbitX_Space?t=jEPMn_Dx5wny0qKDew298Q&s=08' target="_blank"><img alt='Twitter' src='https://img.shields.io/badge/OrbitX.Space-100000?style=flat&logo=Twitter&logoColor=white&labelColor=08a4f6&color=2f3136'/></a>
<a href='' target="_blank"><img alt='GitHub' src='https://img.shields.io/badge/GitHub-Passing-100000?style=flat&logo=GitHub&logoColor=white&labelColor=2b3838&color=2aae48'/></a>


## Makefile
1. Flash the firmware into your chip:<br>
     `make flash_firmware`
2. Revert back everything & use arduino bootloader:<br>
     `make it_arduino`

## Schematics info:
![Example_Schematic&Routing](./images/schematic_scaled_down.png)

Based on the firmware:
1. `TX` -> **Phase A**<br>
   `RX` -> **Phase B**<br>
   (JoyAxis: X-Axis)

2. `4` -> **GEAR_1** (JoyBtn: 2)<br>
   `5` -> **GEAR_2** (JoyBtn: 3)<br>
   `6` -> **GEAR_3** (JoyBtn: 4)<br>
   `7` -> **GEAR_4** (JoyBtn: 5)<br>
   `8` -> **GEAR_5** (JoyBtn: 6)<br>
   `9` -> **GEAR_R** (JoyBtn: 7)<br>
   <br>
   Note: There is also a virtual joystick button meant for **GEAR_N** (JoyBtn: 1), map it to "NEUTRAL" in your game. When none of the above 6 buttons are active, **GEAR_N** automatically becomes active.

3. `A0`, `A1`, `A2` are *analog inputs* that represent **RotX**, **RotY**, **RotZ** (in joystick prop.) & can used for floor pedals.

4. `2`, `3`, `10`, `14`, `16` are GPIO.
***
**Author: Abhiram**
