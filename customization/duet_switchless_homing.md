---
title: Switchless Homing using the Duet (Trinamic 2660 drivers)
---
## Background
The Trinamic 2660 drivers have stall detection that can identify dropped steps through back-emf from the stepper motor itself. This is referred to as StallGuard. RRF on the Duet Wifi offers several options as to what action to take when a motor stall is detected.

## Configuraion

The Duet wiki has a page on [sensorless homing](https://duet3d.dozuki.com/Wiki/Stall_detection_and_sensorless_homing) that you should review along with [M915: Configure motor stall detection](https://duet3d.dozuki.com/Wiki/Gcode#Section_M915_Configure_motor_stall_detection). I'll cover the bits specific to my configuration here.
The [RailCore community Duet config](https://github.com/railcore/configs/tree/master/duet) has sensorless homing files available.

Basically, I:
  * enable stall guard
  * turn current way down
  * drive the motor to the rail until it detects stalling
  * turn current back up with homed axis. 

My configuration does all of this in the homex.g and homey.g. You don't want to try and home Z with stallguard. You'll have a really bad time if you do. So here's my homex.g:

```
M400 ; wait til stuff stops
M574 X1 Y1 S3 ; use stall guard for endstops
M913 X30 Y30  ; drop motor currents to 30% 
M201 X1000 Y1000 ; reduce acceleration on X/Y to stop false triggers
M915 P0:1 S3 R0 F0 H400; both motors because corexy; Sensitivity 4, don’t take action, don’t filter, 400steps/sec
G91 ; set relative
G1 Z5 F1200 S2
G1 S1 X-250 F4000 ; move left 250mm, stopping at the endstop
G1 X10 F1200; move away from end
G1 Z-5 F1200 S2
G90 ; back to absolute positioning
M400 ; wait again
M913 X100 Y100  ; motor currents back to 100%
M201 X3000 Y3000 ; accel back to original
M574 X1 Y1 Z0 S0 ; set endstops back 
```


I've commented the gcode so I could remember what each step does. You can read it, and know, too. I had to drop my motor currents to 30%. If you've ever commanded your printer to move somewhere it can't you are probably aware that it can be pretty dramatic. With the current at 30%, the two skipped steps stallguard requires just sound like a bump. You'll want to make that 250 a 300 if you're using a 300ZL, of course. 

You'll notice at the end that I set the end stops back to their original (for my printer) configuration. That's so I could test this without removing my old config. You can do the same; just copy your M574 line from config.g and put it here. 

My homey.g isn't much different:

```
M400 ; wait til stuff stops
M574 X1 Y1 S3 ; use stall guard for endstops
M913 X30 Y30  ; drop motor currents to 40%
M201 X1000 Y1000 ; reduce acceleration on X/Y to stop false triggers
M915 P0:1 S3 R0 F0 H400; both motors because corexy; Sensitivity 4, don’t take action, don’t filter, 400steps/sec
G91 ; set relative
G1 Z5 F1200 S2
G1 S1 Y-250 F4000 ; move forward 250mm, stopping at the endstop
G1 Y10 F1200; move away from end
G1 Z-5 F1200 S2
G90 ; back to absolute positioning
M400 ; wait again
M913 X100 Y100  ; motor currents back to 100%
M201 X3000 Y3000 ; accel back to original
M574 X1 Y1 Z0 S0 ; set endstops back 
```

Same basic features, just the critical "Y-250" instead of "X-250". Again, you'll want to change that to 300 if you have one of those. You'll want to set the acceleration back to whatever you're using in config.g, as well (the second M201 line in both files). 

You'll want to edit "homeall.g" as well. Mine looks like this:

```
; homeall by executing individual axes homing macros
M98 Phomex.g
M98 Phomey.g
M98 Phomez.g
```

This way your 'home all' button on the Web UI will work properly, as well. 

## Discussion

So right up front, this isn't as precise as the default microswitches. If you want to do crazy stuff like home in the middle of a print and start printing again, you'll see the change. If you want to resume after power failure, you'll see the line (of course, In both of these case, you'll see the line anyway, just slightly less visible). I did a test where I paused and homed every 10mm in a test print. With the switches, it's much less visible. 
