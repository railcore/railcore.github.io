---
title: RailCore II General FAQ
---
### Q: Is 1515 strong enough?

A: The Railcore is designed around panels that provide rigidity and strength. The extrusion (1515) is mainly to give something to bolt the sides and parts to. Open frames can be made very strong, but boxing them in increases their rigidity by *at least* an order of magnitude. 

Long A: The side panels increase rigidity over **inlet braces** (diagonal bracing) by an order of magnitude. It's nearly two orders of magnitude over an unbraced open frame. 

To put this in perspective, going from 1515 to 2020 will likely increase your ultimate (failure) strength by ~1%, and your rigidity at the loads we're talking about by much less, probably .5-.25%. The strength and rigidity of the open frame go up linearly with the cross section of the frame members, so 2020 isn't quite twice (i.e, 225mm^2 vs 400mm^2) as rigid or strong in an open frame construction. 

The only engineering math I can find about the relationship is in regard to constructing buildings. 

The rigidity of the construct is the **in plane** rigidity of the panel material, with some reduction for mounting hole deformation. So the rigidity is the force it takes to make that rectangular panel of HDPE turn into a rhombus, with the ultimate strength limit being the tearout strength of the mounting holes and screws. 

### Q: Can I adapt it to 2020 extrusion?

A: The Railcore is open source, so you can take anything useful you want and re-use it. That said, this is not a simple undertaking; many parts have 7.5mm specifications for the 1515 extrusion. If we had known originally that 1515 was so hard to source overseas, we might have started with 2020, but we had no idea. Sorry. 

Update: Several community members have done this. Check the Discord and ask around!

### Q: Is that rail strong enough to hold the print carriage?

We did a LOT of testing and experimented with several means of additional support, with no change in print quality. Keep in mind that the rail is 9x12mm bar of hardened steel. This is roughly as rigid (perhaps more so) as the standard 2x8mm smooth rods used in typical 3d printers from a while back. 

The vertical orientation of the carriage was to place the stiffest axis of the rail in line with the highest load. Since our accel is typically less than 1g, the lateral load will never reach the static vertical load, so it's the best way to provide appropriate stiffness. 

It has been noted that rails are 'intended' to be bolted to something. This is absolutely true; they're intended to be bolted to a registration edge. This is to assure straightness. In practice, most are very straight at the lengths we're talking about. It's an off-label use, no question, but seems to work very well. 

The good news is, you TOO can experiment with various spar solutions to see if it improves your results. 

### Q: Why is that bit of PTFE there between the Extruder and the hot end?

There are five reasons we designed the carriage the way it is. Here they are, ranked by how important I think they are.

1) We intended the RailCore to be mod friendly. We are experimenters and will never stop trying new stuff. The distance from groove mount to nozzle tip is radically different in various hot ends, meaning to change hot ends you've gotta change the shroud and the probe mount at a minimum when you change hot ends. This way, you just make a hot end specific mount and swap 'em out.

2) Steve was obsessed with build volume to printer volume, because the only printer he has owned that he didn't design was a flash forge that had a tiny build volume and was nearly as large as the RailCore 2 250. This was the most compact way to build that carriage he could come up with. Perhaps he was a little TOO obsessed, as it's difficult to get the nozzle off the build plate now :D

3) Steve despises disassembling his extruder hot end assembly because someone got some cruft in their filament extrusion line, or any of several other kinds of jams that require complete disassembly of both units to resolve. A simple oversized bit of filament can jam in the cold end and you've gotta take the entire stack apart. Pfft.

4) The "mount the extruder to the carriage and stick the hot end in the extruder" is not as rigid. The nozzle deflection is much better controlled when the hot end is mounted the way it is. Some all-in-ones do better because the 'mount' is actually at the heatsink, but groove mount hot ends are not of this variety.

5) The mass of the system is as close to centered on the rail as we could get it. Hanging it all on one side certainly does change motion behavior. We're not certain how important this is, but it was one consideration. As was mentioned, some folks have described visible artifacting, but folks seem to be pretty happy with their Hemera builds, so far, so it may be implementation specific.

Also, if the bit of PTFE bothers you, or you have real issues with it, you can move to the Hemera solution. Or, you can check thingiverse; some people have made mounts for the typical extruder-mounted hot end. 

### Q: Why are the rails vertical rather than horizontal?

Primarily space efficiency. We had noted that many CNC machines use the rails in the vertical orientation and we wanted to make the RailCore as space efficient as possible. The standalone Y rail is vertical to make the Y carriage more compact and to align the stiffest portion of the rail with the highest load. 

### Q: Why didn't you make it Bowden? Doesn't that defeat the entire purpose of CoreXY?

We've tested with Bowden and direct configurations at our normal printing speeds (~60-100mm/s), and found no difference in print quality. We felt that for most purposes, the direct extruder was a less troublesome solution. 

That said, if you prefer a Bowden configuration, we made it simple to switch - it takes about five minutes to remove the extruder from the carriage, bolt it to the chassis, and move the filament guide tube to the "Bowden" position. 

### Q: Can I make an (insert giant size here) version?

Short A: yes, it's open, download files and go crazy!

Long A: Probably not. To maintain the same performance and precision as you scale up becomes progressively more expensive **per cc of build volume** (if you maintain the same speed and precision). FEA in F360 suggests to me that building a 500^3 printer will be a significant engineering challenge, and much more expensive. CoreXY has long belts already - scaling up means either much wider belts - with the much higher tensions that entails - or abandoning the corexy mechanism.

You can do it with the same parts, but you'll sacrifice speed and precision and fundamental robustness. Also, remember, all other things constant, build time goes up as the cube of the linear expansion :D 
