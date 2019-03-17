---
title: Z-probes
--- 
Choice of Z-probe on the RailCore is one with no single right answer, as with any 3d printer. There are always tradeoffs.  The most important factor is repeatability, you want to choose a probe that will give you consistent results at a given location.

#### IR Probe

#### BLTouch

A Bltouch can be using using the BLTouch in the main Thingiverse page.  You'll need to space the height out to match your particular hotend.  For a V6 having a pair of the brass threaded inserts between the mount and BLTouch is near perfect.  See the picture.  I also used a bit of belt to dampen vibrations since mine was somewhat noisy.

https://i.imgur.com/0miqDUb.png

To connect to the duet you need to use 2 wires off the Z-Probe port, and 3 off of the duex5's PWM1 port.

The full BLTouch Duet guide is here:
https://duet3d.dozuki.com/Wiki/Connecting_a_Z_probe

The settings I use for my BLTouch in my config.g are  (Comment out the IR Probe lines, adjust the Z trigger height as needed):

```
M558 P9 H5 R1 F50 T6000 A5 S0.02 B1
G31 X2 Y42 Z2.68 P25 
```

You also need to make sure the deployprobeg.g and retractprobe.g are in your /sys folder

#### Piezo
