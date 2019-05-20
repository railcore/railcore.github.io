---
title: Thermostatic Heatbreak Fan
---
The hotend heatbreak fan can be thermostatically controlled to reduce noise when the printer is idle and cool.

**Please note that there is some risk that if the Duet firmware crashes, this fan won't cool the hotend and a jam will happen.**

Move the connector for the heatbreak fan from the "Always on Fans" connector to FAN1.  See the [wiring diagram](../build_and_troubleshoot/RailCore_wiring_diagram_with_12v_enablement-v2.pdf) to help find the connectors.

Add the following to your `config.g` to enable thermostatic control of FAN1.
```
M106 P1 T45 H1
```

It is [recommended](https://duet3d.dozuki.com/Wiki/Connecting_and_configuring_fans#Section_Thermostatically_controlled_fans) to always use FAN1 for heatbreak fans as this connector is on at boot and is only turned off when the firmware detects it's safe to do so.  In practice your fan will turn on briefly when the machine starts up, then go silent if the hotend is cool.
