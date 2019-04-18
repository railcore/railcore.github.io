Build notes

Commissioning Motion Test to test each motion component in isolation, then as a system at very low rates of speed.


2 pass (fast then slow) Z homing
Sensorless homing available.
Conservative mode for builders. You can switch it off after testing probes, switches and stall detection work.
Maximum heater temperatures set.
IR Probe and BLtouch ready. Orion Piezo 

Macros
Allow movement of axes before homing, 3 pass levelling and more.


The fan outputs are rated to 1.5A maximum according to the wiki. So knowing your voltage and the wattage per led of your strip, you can calculate how many amps it will take.
You can connect lighting to an unused heater output too, if you disable the corresponding heater using M307, which makes it available for general purpose output using M42.
If so, then the E1 heater output is free. It's addressed as heater 2, so you should be able to send M307 H2 A-1 C-1 D-1 to disable the heater functionality, then you can use M42 P2 S# (where # = 0.0..1.0 or 0..255) to control it.
