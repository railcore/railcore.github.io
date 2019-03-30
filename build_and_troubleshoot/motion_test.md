---
title: Performing a Motion Test
---

The Duet configuration from our [GitHub repo](https://github.com/railcore/configs/) contains a macro `MotionTest.`  This macro will *slowly* test the motion components, end stops, and probes of your printer so that you can ensure that your build is functioning correctly at lower speeds to minimize the chance of damage from a crash.

At each step, the macro will provide a prompt telling you what it's going to do on your PanelDue and/or DWC.  Pay close attention to the prompt, then watch the printer closely to make sure it's doing what it told you it would do, and moves the direction it tells you.

**Note:** If any step fails to produce the motion you expect, hit cancel or power off the printer and **do not proceed!**  Usually this means a wiring connection is not correct, or that you need to reverse the direction of motion for a stepper in `config.g`.

**Note:** Pay attention and think while this is running, to anticipate potential problems!  For example, if the printer tells you it's going to look for the x-endstop but is moving away from the x-endstop, power down immediately rather than waiting for a crash!
