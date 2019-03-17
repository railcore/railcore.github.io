---
title: Design History
---
## More about the RailCore II

The initial idea to collaborate on a printer started in the #RepRap IRC channel, and centered on some common goals we both had in mind for a new printer design.

These were:
 * Core-XY motion.
 * All Linear rails for movement.
 * Space & cost-efficient, enclosable frame.
 * Key components being printable, or able to be milled.
 * Flexibility and scalability in the design.
 * A professional looking printer.
 * Self sourced and easily customizable.

J. Steve White had previously built the Railcore - the alpha version of this printer.  Lessons were learned and the design on the new printer began.  All design work was done in Fusion360.
As it progressed, we decided to publish this printer in an open, documented format for others to build as well. [For the curious, there is a more detailed version of the story of how the RailCore II came to be.](/the_railcore_story.md)

The frame is designed to be 1515 aluminum extrusion.  This was a space efficient choice, which makes building the printer easier, as standard M3 hardware works like a T-Nut fitting into the extrusion nicely.  To add rigidity, we use HDPE sides to stiffen the frame.  (These can be cut out of any material you prefer, including melamine, plywood, acrylic & aluminum).  The total cost for the actual frame components (extrusion, corner cubes, and sides) is roughly $100.

Some notable aspects of the design: 3 trapezoidal lead screws Z-axis, stacked idlers and duo-planar belt path.
The electronics in the design are the Duet (Wifi or Ethernet), Duex2/5,  24v PSU and 0.9 degree steppers.  We used an E3D v6 for the design, as it's the most common hotend at this time.  Support for other hotends such as Bondtech and Mosquito and many others are also available.
Semi-Direct drive or full bowden is supported.
