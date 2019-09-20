#### What size bolts are used for the halo?  M3x10?  Also, any tips for removing and reusing the Keenovo heater?

I used M3x10 I lift the nuts in the aluminum channel with a zip tie.
You can re-apply 3M 77 or 90 spray adhesive and re-attach.
Wade got his off and re-attached using fishing line.
I removed and re-attached a keenovo. Seemed to work, then shorted out internally and made a burning smell. looks like half of the internal circuitry died, so the front half was getting twice as hot as needed....

#### config

there are lots of variables out there (cooling fan settings, nozzle type, etc.)
the config is only a jumping off point

#### ghosting / resonance

Anyone looking to improve their ghosting / resonance in the front-facing direction? Try this: take out your X carriage aluminium spacers and look closely (with smartphone on max magnification) to see if there are not little raised areas in the middle. File flat. Check again. Seems that the Y rail can rotate around this pimple.

In my limited lathe experience very difficult to cut off a part without having something like this. So perhaps appropriate to include a filing step in the build process.

![](https://cdn.discordapp.com/attachments/546187906033909792/595236820741259264/IMG_0309.jpg)


## getting extrusion right

the biggest is getting your actual extrusion right
my method is this:
1) figure out steps / mm.  remove the hotend. I leave a bit of ptfe in the extruder, extrude the filament so it's stickout out of the ptfe a bit, cut it flush. Extrude 100mm, and cut it flush again. measure that bit.  adjust steps/mm until that's exactly 100mm
(to measure I cut a bit of PTFE to 98mm, and taped it to a big allen wrench, so it's held straight. then I stick the filament through it and measure.  so it takes any curve out of the filament)
once that's exact, I measure my filament diameter, put it in my slicer, then I print a single wall 40mm cube, 20mm high at 30mm/s or less.  I measure each wall and compare to my extrusion width.  if it's supposed to be 0.5 and it's 0.55, I lower my extrusion % in the slicer until it's 0.50
Then I test it by doing the same print with 2 walls
and make sure it's 1.0
Atomic PLA has a 0.94 multiplier, every time I measure it.  Atomic PETG has a 0.96.  Snolabs PLA is 0.96.  Snolabs PC is 0.93.
That gets me extremely consistent walls.  And means the joints in prints work awesome, multi-part prints fit together, and supports break free.
