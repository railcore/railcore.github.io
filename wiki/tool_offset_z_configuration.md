#### Railcore Tool Offset Configuration

So right now the way most of us (who don’t use Piezo sensors >:) set up our Z probe is like this: We home Z, and look at the distance between the nozzle and the deck. We attempt to jog down to it, only to discover we can only go to -.2. We then guess it’s 1.2mm, and we put that in our G31 line in config.g.

   G31 X0 Y30 Z1.2 P1

Then we home Z again, and jog down to Z=0 or until the nozzle touches the bed. We usually use a piece of paper to test with - we want it to JUST drag the paper noticeably. Usually our guess is wrong, and either our paper is pinned to the deck such that it would tear if we dragged on it any harder, or it’s clearly flapping in the breeze. We update our G31 again, and repeat, until we get to the point where it *just* drags the paper.  This becomes our “Z Offset”. 

But what if I told you there is a better way? Well, a “less fiddly” way? 

First things first, **BACK UP YOUR CONFIGURATION**. Next, we need to change a couple of config settings.  We need to change the minimum Z travel to 5mm below 0:

```
M208 S1 Z-5  :set minimum Z travel
```

We need to enable config-override, so we need to add at the end of our config.g file:

```
M501 ; load config-override
```

Make sure that your config.g includes tool selection:

```
T0 ; select first tool
```

And we need to set our G31 Z offset (and Z only) to 0:

```
G31 X0 Y30 Z0 P1
```
  
Once these changes are made, restart the controller (power down and back up is good).Now that it’s back up, home X and Y:

```
G28 X Y
```

Then home Z:

```
G28 Z
```

Now, put your piece of paper on the deck. Jog down until the nozzle JUST touches it and drags it a bit. Check Z - it should say something like 1.2.Now, you want to enter that as the “offset” for tool 0. 

```
G10 L1 P0 Z1.2 ; set tool offset for tool 0
```

Then save with:

```
M500
```

Restart the machine again. Home Z, then jog the nozzle down to the paper. You should find yourself at Z=0 - and you’re done. Each time you reboot your system, the config will load the tool offset saved in config-override by your M500. If you change nozzles (or hot ends) or otherwise do something that will change your tool offset, you can repeat the process, but with one important change:

```
G10 L1 P0 Z0 ; set tool offset to 0
G28 Z
```

THEN jog the nozzle to paper, and set your tool offset. This may seem complicated if you’re not used to manual gcode entry, but after a couple of tries you’ll find it MUCH simpler than adjusting Z offset in G31. 