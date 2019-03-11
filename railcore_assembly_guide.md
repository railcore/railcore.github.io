---
title: RailcoreII 300ZL/ZLT Assembly Guide
---

Introduction
============

RailcoreII is a Core-XY based Reprap 3D printer designed by J. Steve
White & Tony Akens and is published under the [*CC-Attribution
Only*](https://creativecommons.org/licenses/by/2.0/) license. The
initial idea to collaborate on a printer started in the \#reprap IRC
channel, and centered on some common goals for a new printer design.

These were:-

-   Core-XY motion.
-   All Linear rails for movement
-   Space & cost Efficient, enclosable frame
-   Key components being printable, or able to be milled
-   Flexibility and scalability in the design
-   A professional looking printer
-   Self sourced and easily customizable.

J. Steve White had previously built the Railcore - the alpha version of
this printer. Lessons were learned and the design on the new printer
began. All design work was done in Fusion360.

As it progressed, we decided to publish this printer in an open,
documented format for others to build as well.

The frame is designed to be 1515 aluminum extrusion. This was a space
efficient choice, which makes building the printer easier, as standard
M3 hardware works like a T-Nut fitting into the extrusion nicely. To add
rigidity, we use HDPE sides to stiffen the frame. (These can be cut out
of any material you prefer, including melamine, plywood, acrylic &
aluminum). The total cost for the actual frame components (extrusion,
corner cubes, and sides) is roughly \$100.

Some notable aspects of the design: 3 trapezoidal lead screws Z-axis,
stacked idlers and duo-planar belt path.

The electronics in the design are the Duet (Wifi or Ethernet), Duex2/5,
24v PSU and 0.9 degree steppers. We used an E3D v6 for the design, as
it’s the most common hotend at this time. Support for other hotends such
as Bondtech and Mosquito and many others are also available.\
Semi-Direct drive or full bowden is supported.

*A special thanks to Filastruder, Duet3d, E3D, SeeMeCNC, Mandala
Roseworks, 713Maker and Project R3D for supporting the project.*

BOM, Model & Thingiverse Project
================================

The Fusion360 models and BOM should be considered the master copies
maintained by Tony Akens. Thingiverse is also maintained by Tony Akens.\
Website & Github are maintained by volunteers.

### RailcoreII 300ZL Bill Of Materials - Google Spreadsheet

[*https://railcore.page.link/zlbom*](https://docs.google.com/spreadsheets/d/1Eib0IkmRiP-zVM2p6gZ9PJ2bsDDvSKWbGtUybuFWfcs/edit?usp=sharing)

### RailcoreII 300ZL Fusion360 Model

[*https://railcore.page.link/zlmodel*](http://a360.co/2D5OryV)

### RailcoreII 300ZLT Bill Of Materials - Google Spreadsheet

[*https://railcore.page.link/zltbom*](https://docs.google.com/spreadsheets/d/1L8mOABLsbfHb1PVPEnT-TpgfRpO25UduGNxD8GNMPSs/)

### RailcoreII 300ZLT Fusion360 Model

[*https://railcore.page.link/zltmodel*](https://docs.google.com/spreadsheets/d/1L8mOABLsbfHb1PVPEnT-TpgfRpO25UduGNxD8GNMPSs/edit?usp=sharing)

### RailcoreII 300ZL/ZLT Thingiverse (all printable parts)

[*https://www.thingiverse.com/thing:2407174*](https://www.thingiverse.com/thing:2407174)

### Website and Github

[*https://railcore.org/*](https://github.com/railcore)

[*https://github.com/railcore*](https://github.com/railcore)

### Railcore II Kits

[*https://www.projectr3d.com/*](https://www.projectr3d.com/)

N.B. The RailCore project is an open-source licensed project, and
RailCore kits are produced by [*Project
R3D*](https://www.projectr3d.com/) as a commercial venture. While there
is some collaboration and affiliation between these two entities, these
kits are **not produced by the RailCore project.**

Therefore we cannot answer questions regarding the contents of the kit,
returns, postage or delivery. Please do contact Project R3D concerning
these matters.

![](media/image50.png){width="5.0625in" height="1.7395833333333333in"}

Recommended tools, notes to the build
=====================================

To build this printer, there are some recommended tools you’ll want. All
of these are detailed in the “Tools” tab of the BOM. You’ll need a 3mm
tap to tap the ends of the extrusions. A quality tap from Irwin is
recommended, and makes it go much faster. A 5.5mm Nut Driver is highly
recommended (example:
[*https://www.amazon.com/MakerBeam-hex-nut-driver-pack/dp/B00G2DNXV2*](https://www.amazon.com/MakerBeam-hex-nut-driver-pack/dp/B00G2DNXV2)),
since most of the hardware is M3. **It’s recommended you run a 3mm or
5mm drill bit through the holes in the printed parts to make threading
bolts through them easier. **

We chose to build with fairly premium components where it made sense.
This includes the Duet Wifi controller, PanelDue display, E3D v6 Hotend,
0.9 degree steppers, and 24v PSU, among other choices. Many of these
items can be subbed out for cheaper components to save cost. Other
components, such as the Linear Rails, can be improved in quality by
being purchased from Misumi or Hiwin. The design is made to be
customizable based on your budget and goals.

It’s also very important that the frame extrusion cuts be **square** and
**accurate**. We opted to have our extrusion pre-cut by Misumi; if you
cut it yourself, be very, very obsessive about cutting them the proper
length and having perfectly square end cuts.

Printed Parts
-------------

The printed parts list is available on Thingiverse, and detailed in the
BOM on a separate tab. For all structural parts, we recommend Atomic
Filament’s Carbon Fiber PETG, or ABS be used. 4 perimeters, 4 bottom and
4 top layers work well for adding a lot of structural integrity to the
parts.

There are a few printed parts that can vary based on your hardware.

Before You Build
----------------

There are some preparation steps that must happen before you start your
build.

#### Tap the Extrusion Ends

Using your 3mm x 0.5mm thread pitch tap, tap the extrusion ends to a
depth of at least 10mm. This is required for attaching the corner
cubes to the extrusions. Take your time to get good threads cut,
running the tap in slowly and backing it out to clear the cut
aluminum. It will go more smoothly if you use a bit of cutting oil or
light machine oil on the tap. The only ones that do not have to be
tapped are the 445mm extrusions for the Z axis. After tapping your
extrusion ends it’s a good idea to deburr them with a countersink.

![](media/image108.png){width="5.585937226596675in"
height="3.7239588801399823in"}

#### &lt;Recommended&gt; Check your rails for any missing ball bearings, and replace them. 

If you ordered genuine rails or got a kit from Project R3d, this is
not likely to be an issue. If you ordered from Ebay or similar, it’s
common for there to be some stiction from poor lubrication, missing
ball bearings, etc. We recommend buying some 3/32” diameter G25 ball
bearings to replace any that are missing. For lubrication, a PTFE
based oil or light grease is recommended on the rails. Alternately,
you can use light lithium grease, but the loading applied to these
rails is very low and the lighter PTFE impregnated machine oils move
with a little less effort.

#### Sink the brass inserts into the printed parts

You need to use a soldering iron to carefully sink the brass inserts
into the printed parts. Sink the inserts in ⅔ of the way, then press
the carriage against a flat surface to get them flush. After placing
each insert you may need to clear the channel by running your tap down
through the insert and into the plastic (be careful not to cross
thread your inserts!)

Here’s a good article about using the inserts:
[*https://hackaday.com/2019/02/28/threading-3d-printed-parts-how-to-use-heat-set-inserts/*](https://hackaday.com/2019/02/28/threading-3d-printed-parts-how-to-use-heat-set-inserts/)

The Y Carriage gets 18 x 3mm brass inserts.

![](media/image111.png){width="4.226562773403325in"
height="2.8177088801399823in"}

![](media/image37.png){width="4.2440354330708665in"
height="3.401042213473316in"}

The X carriages get 1 x 5mm brass insert and 1 x 3mm brass inserts
each. (If you have a kit, the X carriages are aluminum, and you can
skip these) Both are inserted into the bottom of the Carriage. Be as
precise as possible with the 5mm insert, as you want your idler bolt
as straight up and down as possible.

![](media/image27.png){width="3.15625in"
height="2.2083333333333335in"}

Each Electronics Box Corner gets one brass insert. One end is thicker,
to make putting the insert in easier.

If you plan to use the TPU pads on the bottom of the feet, which help
reduce noise, you can add two 3mm brass inserts to the bottom of each
foot. **(TPU foot pads and brass inserts for the feet are not included
with the kit, and are optional - if you put the brass inserts into the
feet in the kit, you’ll run short)**

![](media/image5.png){width="4.213542213473316in"
height="3.8444061679790025in"}

4\. Lubricate Your Linear Rails

Whether you got the kit or self-sourced, you should \*carefully\*
remove your carriages, and lubricate the bearings in them. You can use
a light grease such as superlube 92003 or a oil, such as superlube
51010. Taking the carriage off can be easier by moving it to a small
printed bit of MGN12 rail such as
[*https://www.thingiverse.com/thing:1708320*](https://www.thingiverse.com/thing:1708320)

Frame Assembly
--------------

### Top Extrusions Assembly

Part List for this step:

\(2) 460mm extrusion (front, back)

\(2) 425 extrusion (left, right)

\(53) 3mm nut

\(20) M3 x 10mm hex head bolts

\(9) M3 x 16mm hex head bolts

\(8) M3 x 8mm button head bolts

\(8) M3 x 8mm button head bolts (or 6mm, check your linear rail depth for
fit)

\(2) 400mm linear rail + carriage

\(4) Corner Cubes

Lay out your extrusion as shown in this picture.

![](media/image14.png){width="6.5in" height="4.75in"}

The 460mm extrusions go in the front and back, and the 425mm extrusion
goes on each side. Place a corner cube at each corner. Be sure to note
the orientation of the corner cube. A small hole needs to face the end
of each rail, and a small hole needs to point down. It can be helpful
to use a pencil or marker to write a small mark to note what each is
on the top of the Extrusion. I made a small letter on the top of each
(F, R, B, L). Masking tape is another way to mark them.

Start with the 425mm Left Extrusion. Attach back left corner cube to
left extrusion using an 8mm button head bolt. Just make sure the
corner cube is snug for now.

![](media/image49.png){width="6.5in" height="3.2222222222222223in"}

Holding the left extrusion as it will be oriented on the printer,
slide the following parts into the extrusion. (if you marked it, I
recommend keeping your markings on the top of each extrusion, so it’s
consistent)

\(8) M3 nut into the top channel (this includes 4 spares for any optional
components you may add later)

\(5) M3 x 10mm Hex bolts in the outside channel

\(4) M3 nut in the inside channel

\(6) M3 x 16mm hex head bolts in the bottom channel.

![](media/image102.png){width="6.5in" height="3.236111111111111in"}

Attach front left corner cube to left extrusion using (1) 3mm x 8mm
button head bolt.

![](media/image56.png){width="5.854166666666667in" height="3.0in"}

Attach front & rear extrusions (460mm) to left extrusion using (2) 3mm
x 8mm button head bolts.

![](media/image54.png){width="6.5in" height="3.888888888888889in"}

You should now have a C shaped part made of 3 extrusions, and two
corner cubes.

Now we’re going to slide some hardware into the front extrusion.

\(8) M3 nuts go in the top of the front extrusion. (All spare, 2 for
optional panel due case)

\(5) M3 x 10mm hex head bolts go in the outside (facing you) of the front
extrusion. These will hold the front panel on later.

Now the same for the back extrusion.

\(8) M3 nuts go in the top channel (6 spare)

\(5) M3 x 10mm hex head bolts go in the outside channel (facing away from
you) of the back extrusion. These will hold the back panel on later.

![](media/image82.png){width="6.5in" height="4.069444444444445in"}

Now we’re going to attach the linear rails to the front and back
extrusions.

Take one of your 400mm linear rails and move the carriage to the
center. Use a couple bits of easy to remove tape like masking tape or
painters tape, and tape the carriage there so it doesn’t slide freely
(you don’t want it falling off!) My rails came with zip ties to keep
the carriages from coming off, just clip those off now. If your rails
have little metal retainers, they can stay on - just move them to the
ends of the rail.

Now, select 4 evenly spaced holes on your rails (the two on the end,
and two in the middle), and place in an 8mm button head bolt (if your
rails are thinner, you may need to use a 6mm bolt - you can test fit
one to know which you need before you do them all).

Now loosely thread a nut onto the bolt, leave a gap between the back
of the rail and the nut.

![](media/image71.png){width="6.5in" height="3.8055555555555554in"}

Now carefully line up the rail, and slide it onto the inside face of
the back extrusion. Once it’s fully on, use a allen wrench to snug up
the bolts. They don’t have to be tight just yet. The position of the
linear rails is finalized later in the guide. The rail should start 25
mm from the right hand end of each extrusion (which will leave a 35 mm
gap on the left hand end).

Now repeat the above steps with another 400mm linear rail, and attach
it to the inside face of the front extrusion. Remember, it only needs
to be snug, don’t crank it down.

![](media/image13.png){width="6.5in" height="4.0in"}

Now we put together the right Extrusion. First attach the rear corner
cube using (1) 3mm x 8mm button head bolt (Snug)

![](media/image72.png){width="6.5in" height="3.625in"}

Now we slide in the hardware for this extrusion.

\(13) M3 nuts in the top channel. This includes 4 spare for optional add
ons later (add more if you wish)

\(3) M3 x 16mm hex head bolts in the bottom channel

\(5) M3 x 10mm hex head bolts in the outside channel (these will hold the
side panel on later)

\(4) M3 nut in the inside channel (for optional add ons)

![](media/image61.png){width="6.5in" height="3.7222222222222223in"}

Once all the hardware is in, attach the front corner cube using (1) 8mm
button head bolt

![](media/image67.png){width="6.5in" height="3.236111111111111in"}

Now attach the right extrusion to the front and back rails using (2) 8mm
button head bolts.

![](media/image101.png){width="6.5in" height="3.3472222222222223in"}

The top assembly should now be done! Set it aside for now.

### Bottom Extrusions Assembly

Parts list for this step:

\(2) 460mm (front, back)

\(2) 425mm (left, right)

\(4) corner cube

\(8) M3 x 8mm Button Head Bolts

\(32) M3 x 10mm Hex Head Bolts

\(17) M3 x 16mm Hex Head Bolts

\(8) M3 nuts

Lay out the parts like you did for the top extrusion assembly. Corner
cubes on each corner, this time with a small hole pointing up. Put a
460mm extrusion for the front and back, and two 425mm extrusions for
the sides.

![](media/image57.png){width="6.5in" height="4.75in"}

We’re going to start with the bottom left extrusion. Place the rear
corner cube on using (1) 3mm x 8mm button head bolt. Be sure the small
hole is facing “up”.

![](media/image105.png){width="6.5in" height="3.361111111111111in"}

Now we’re going to slide in some hardware.

In the top channel put in (6) M3 x 16mm Hex Head Head bolts.

In the outside channel slide in (5) M3 x 10mm hex head bolts, these
will later hold on the side panel.

In the inside channel slide in (4) M3 nuts (All optional for add ons
later).

On the bottom slide in (1) M3 x 16mm hex head bolt, then (3) M3 x 10mm
hex head bolts, then (1) M3 x 16mm hex head bolts. The longer two
should be on the outside, and will be used to hold on the feet.

![](media/image86.png){width="6.5in" height="3.0555555555555554in"}

Add the Front corner cube to the bottom left extrusion using (1) M3 x
8mm Button head bolt.

![](media/image22.png){width="6.5in" height="3.138888888888889in"}

Attach the bottom back extrusion to bottom left using (1) M3 x 8mm
button head bolt.

Attach the bottom front extrusion to bottom left (1) M3 x 8mm button
head bolt.

You should now have a C shaped set of extrusions, and we can slide in
some hardware.

![](media/image47.png){width="6.5in" height="3.361111111111111in"}

Place (5) M3 x 10mm hex head bolts in outside channel of the bottom back
extrusion.

In the bottom channel of the back extrusion place (1) M3 x 16mm hex
head bolt followed by (3) M3 x 10mm hex head bolts, then (1) M3 x 16mm
hex head bolt.

You can place extra M3 nuts in the top or inside channel if desired.

In the outside (front) channel of the front extrusion place (5) M3 x
10mm hex head bolts.

In the Bottom channel of the front extrusion place (1) M3 x 16mm hex
head bolt followed by (3) M3 x 10mm hex head bolts, then (1) M3 x 16mm
hex head bolt.

You can place extra M3 nuts in the top or inside channel if desired.

![](media/image92.png){width="6.5in" height="3.6944444444444446in"}

You can set this assembly aside, so we can build the bottom right
extrusion. Place the rear corner cube on using (1) 3mm x 8mm button
head bolt.

![](media/image77.png){width="6.5in" height="3.0833333333333335in"}

Now we’re going to slide in some hardware.

In the top channel put in (3) M3 x 16mm Hex Head Head bolts.

In the outside channel slide in (5) M3 x 10mm hex head bolts, these
will later hold on the side panel.

In the inside channel slide in (4) M3 nuts (For optional add ons
later).

On the bottom slide in (1) M3 x 16mm hex head bolt, then (3) M3 x 10mm
hex head bolts, then (1) M3 x 16mm hex head bolts. The longer two
should be on the outside, and will be used to hold on the feet.

![](media/image39.png){width="6.5in" height="3.0833333333333335in"}

You can now put on the front corner cube using (1) 3mm x 8mm button
head bolt.

![](media/image52.png){width="6.5in" height="3.2083333333333335in"}

Attach the bottom right extrusion to the bottom front & bottom rear
extrusions using (2) M3 x 8mm button head bolts.

![](media/image97.png){width="6.5in" height="3.0833333333333335in"}

You’ve now completed the assembly of the bottom extrusions. Be sure to
keep track of which is the front channel, it may help to mark it with
a piece of tape if you haven’t already..

At this point it can be helpful to prop the bottom up using the feet
as stands, to keep the bolts from digging into your table or work
surface. (Empty Filament spools work well, too)

### Upright Extrusions Assembly

Parts needed in this step:

Bottom Frame Assembly (from Step 2)

\(4) 415mm Extrusions

\(4) M3 x 8mm button head bolts

\(40) M3 x 10mm hex head bolts

\(32) M3 nuts (optional - the kit does include enough)

Bolt all four of the upright 415mm extrusions to your bottom assembly
using (4) M3 x 8mm button head bolts. (One for each corner cube)

![](media/image81.png){width="6.5in" height="4.583333333333333in"}

Now we’re just going to drop some hardware down each of the channels.
Again, be sure to keep track of which extrusion is which.

**If you are building a ZLT, put 7 bolts in the outside channels of
the upright extrusions instead of 5.**

In the front channel of the front left extrusion place (5) M3 x 10mm hex
head bolts.

In the left channel of the front left extrusion place (5) M3 x 10mm hex
head bolts.

In the front channel of the front right extrusion place (5) M3 x 10mm
hex head bolts.

In the right channel of the front right extrusion place (5) M3 x 10mm
hex head bolts.

In the left channel of the rear left extrusion place (5) M3 x 10mm hex
head bolts.

In the rear channel of the rear left extrusion place (5) M3 x 10mm hex
head bolts.

In the right channel of the rear right extrusion place (5) M3 x 10mm hex
head bolts.

In the rear channel of the rear right extrusion place (5) M3 x 10mm hex
head bolts.

![](media/image94.png){width="6.5in" height="4.125in"}

**(Optional)** If you want to be able to add things later such as
camera mounts, etc, now’s a good time to add M3 nuts. I added (4) M3
nuts to both of the inside channels for each upright extrusion. (32)
M3 nuts total. These are not used in the build directly, but are much
easier to add now than after the build is complete. (You can actually
add M3 nuts to any inside facing channel you wish, if you think they
may be useful later. The outside channels will be covered by your side
panels, so M3 nuts in them won’t be usable)

### Attach top assembly to uprights

Parts used in this step:

\(4) M3 x 8mm Button Head Bolts

Top Assembly from step 1

Take your completed top extrusion assembly, paying attention to which
is the front extrusion, and put it on top of the uprights. Bolt it
down with (4) M3 x 8mm button head bolts. Your frame is now complete!
Up until now, we’ve been just snugging up the bolts in the corner
cubes. Now is the time to tighten them all up. I suggest doing a
review of the count for the nuts and bolts in each extrusion now, as
it’s hard to correct them later. You can optionally remove each corner
cube bolt one at a time, and use a drop of blue loctite on them. **(If
you want to use loctite on the corner cubes, now would be the time)**

![](media/image4.png){width="6.5in" height="4.041666666666667in"}

\
-

Z-Bracket installation
----------------------

### Attach the Z Brackets

Parts needed for this step:

\(3) Z\_Bracket\_Top

\(3) Z\_Bracket\_Bottom

\(54) M3 Nuts

\(12) M3 x 8mm Button Head Bolts

\(24) M3 x 16mm Hex Head Bolts

*Be sure not to get the “Z\_Bracket\_Top” and “Z\_Bracket\_Bottom” parts
mixed up!*

Starting on the left side, bolt on the following. Be careful to
compare to the picture so you get the order correct.

Starting from the front, on the top left extrusion, bolt on a
Z\_Bracket\_Bottom (with the “arm” facing the back of the printer)
Z\_Bracket\_Top (with the “arm” facing the front of the picture). Each
of these should attach to the bolts in the extrusion using (3) 3mm
nuts. Leave them loose enough you can move them.

On the bottom left extrusion, starting from the front, attach a
Z\_Bracket\_Top (with the “arm” pointing to the back) and a
Z\_Bracket\_Bottom (with the arm pointing to the front).

![](media/image107.png){width="6.5in" height="5.625in"}

Next, attach the Linear rails for the Z axis to the extrusion. It’s
easier to bolt the linear rail to your extrusion before attaching it.
Take one of the 400mm linear rails, and place (4) M3 x 8mm button head
bolts in it. (If building the ZLT, use (8) per rail, evenly spaced)
Loosely place (4) M3 nuts on, one per bolt, evenly spaced along the
rail.

![](media/image8.png){width="4.802083333333333in" height="4.46875in"}

(Number of holes between bolts can vary from this picture, evenly
space them, with one at each end)

Now you can slide those M3 nuts into the channel one of the 445mm
extrusions, and use an allen wrench to tighten it down. Don’t make it
too tight yet - we’ll adjust it later. Use some masking tape to keep
the carriage from falling off.

![](media/image88.png){width="2.375in" height="5.458333333333333in"}

Now take your 445mm extrusion and place (8) M3 x 16mm hex head bolts
into one of the channels at a 90 degree angle to the linear rail you
attached.

![](media/image44.png){width="3.7604166666666665in"
height="4.239583333333333in"}

You then slide these M3 bolts through the rear two Z brackets you
installed (it fits between the Z bracket ant the bearing block), and
attach them with (8) M3 nuts.

![](media/image66.png){width="6.5in" height="5.819444444444445in"}

Repeat the above steps for the linear rail, attaching another to the
Front set of Z brackets you installed. (The hex bolts will go in the
rear slot of the extrusion)

![](media/image85.png){width="4.083333333333333in"
height="4.052083333333333in"}

Now we’ll bolt this extrusion to the front two Z brackets, just like
we did the other one. Attach it using (8) M3 Nuts.

![](media/image45.png){width="6.5in" height="5.694444444444445in"}

Repeat the above process for the right side. Begin by attaching
Z\_Bracket\_Top to the top right extrusion using (3) M3 nuts. Note
when attaching to the right side, this will mean the “arm” of the
Z\_Bracket\_Top points towards the back of the printer, and you should
use the 3 bolts closest to the back of the printer. Attach
Z\_Bracket\_Bottom to the bottom right extrusion using (3) M3 nuts,
again using the bolts closest to the back of the printer. The arm for
this bracket should also point to the back of the printer.

![](media/image48.png){width="6.5in" height="5.861111111111111in"}

Use the other 445mm extrusion, attaching a 400mm linear rail using (4)
M3 x 8mm button head bolts and (4) M3 nuts.

![](media/image8.png){width="4.802083333333333in" height="4.46875in"}

Loosely tighten the linear rail to the extrusion.

![](media/image11.png){width="2.2083333333333335in"
height="5.447916666666667in"}

Insert (8) M3 x 16mm hex head bolts into the rear channel on the
extrusion.

![](media/image59.png){width="3.7708333333333335in" height="5.375in"}

Attach the extrusion to the Z brackets using (8) M3 nuts. Don’t forget
some masking tape to hold the carriage and keep it from sliding off.

![](media/image41.png){width="6.5in" height="5.805555555555555in"}

\
-

Sides installation
------------------

Parts Needed for this section:

\(4) Foot

\(100) M3 Nuts or M3 Nylon Lock Nuts

**FOR THE HDPE SIDE PANELS, THE TEXTURED SIDE FACES OUT OF THE PRINTER
FOR ALL THE PANELS EXCEPT THE BOTTOM. ON THE BOTTOM PANEL THE TEXTURED
SIDE FACES UP TOWARDS THE PRINT AREA.**

Before doing this step you can attach the small TPU foot pads onto the
feet. To do this you need to sink M3 threaded inserts into the holes
on the bottom of the feet. Then use (2) M3 x 8mm bolts to attach the
inserts. This is entirely optional, and can be done later if you
decide you want to add them.

Turn your printer frame upside down, so the bottom is facing up. Place
the bottom Bottom panel over the protruding bolts (the textured side
of the HDPE for the bottom panel should face IN towards the body of
the printer), the two small holes should be nearest the front and back
of your printer. **It’s very important that the two stepper holes be
on the left side of your frame! (the same side that you put two rails
on)** It can be tricky to line the bolts up with each hole, and may
work better with someone assisting. Use needle nose pliers to
straighten the bolts. Place the feet over the two bolts at each
corner. You should be able to thread a nut onto each bolt. You can use
either 20 Nylon Lock nuts, or 20 standard M3 nuts, it’s really just a
matter of aesthetic preference, as they don’t come loose. **(For the
kit, use nylock nuts, or you’ll run out of regular m3 nuts - this goes
for all of the panels)** Tighten them all down using your nut driver,
making sure the panel is centered.

![](media/image30.png){width="5.208333333333333in"
height="4.802083333333333in"}

Next Turn your panel so the “back” is down, and place the front panel
on. This is the one with the large cut out. It also has extra bolts,
to make up for the lower surface area. Place it over the bolts, and
once it’s centered, place 20 nylon lock nuts, or 20 M3 nuts on, and
tighten them down.

![](media/image95.png){width="5.104166666666667in"
height="5.333333333333333in"}

Now lay the printer with the right side down, and bolt on the left
side the same way using either 20 M3 Nylon lock nuts, or 20 M3 nuts.
The textured side should face out.

![](media/image33.png){width="4.895833333333333in" height="5.34375in"}

Now rotate the printer so the left side (the one you just put on) is
facing down, and install the right panel using 20 M3 nylon lock nuts,
or 20 M3 nuts. On this panel,the orientation of the holes is very
important. The holes for mounting the duet and duex5, as well as the
larger hole for your wiring bundle (it’s a good idea to deburr this
hole so it’s not scraping your wires), should be near closer to the
front of your printer, with the hole for the wiring at the top. The
two small holes in the corners should be to the top, and the textured
side should face out.

![](media/image15.png){width="4.895833333333333in"
height="5.395833333333333in"}

The last one is the back panel. Place the printer with the front side
facing down, and install the back panel the same as the others using
20 nylon lock nuts, or 20 M3 nuts.

![](media/image63.png){width="5.28125in" height="5.447916666666667in"}

Your sides should all now be firmly attached and frame is complete.
Before moving on, make sure that all of the side panels are flush with
the top rail - if any protrude above or below, loosen up the nuts
slightly and adjust the panel. This is especially critical for the
left & right panels, having them too high or too low can affect the
idler and stepper mounts.

Y Linear Rail Installation
--------------------------

\(1) 400mm linear rail

\(1) Back\_X\_Carriage

\(1) Front\_X\_Carriage

\(2) M5 x 50mm cap head bolts

\(6) M5 washers

\(2) M5 nylon lock nuts

\(2) GT2 5mm bore smooth idler

\(2) GT2 20T x 5mm bore toothed idlers

\(8) M3 x 8mm button head bolts (possibly M3 x 6mm button head, test fit)

\(2) M3 x 10mm button head bolts

\(2) M3 x 16mm button head bolts

\(2) M3 nuts

5mm ID 6mm OD Shims\
\
If using the aluminum X carriages you need two 20mm shoulder bolts
instead of the (2) M5 bolts & nuts

Before putting on the Y rails, we need to put the idlers & pulleys on
the X Carriages. **(NOTE: I recommend two shims between the idlers,
one below, and one above)** The important part is to get the idlers
and pulleys in the correct order. For the back X carriage the smooth
idler goes on top. Start with an M5 x 50mm Cap Head Bolt. Place the
smooth idler on, then an M5 washer, then the 20T pulley, then another
washer. Pass it through the back X carriage, and then put on an M5
washer and M5 nylon Lock nut. It should all be snug, but both the
idler and pulley should be able to turn freely. The X carriage insert
is illustrated here to show where it goes, hang on to it for now.
Insert one M3 x 10mm button head bolt into the bottom of the carriage,
just far enough it’s fully threaded into the insert.

**If you’re using printed X carriages, yours will look like this.** If
you have the shims replace the washers with them.

![](media/image34.png){width="6.5in" height="4.944444444444445in"}

**If you’re using the aluminum parts, your rear X carriage will look
like this**

You need to adjust the number of shims above the top idler to
eliminate any play in the stack. If you only have a single bag of
shims, use one M5 washer at the top of the stack, then 3 shims.

![](media/image62.png){width="6.5in" height="4.347222222222222in"}

Repeat this process for the front X carriage but on the front one be
sure the pulley is on top, and the smooth idler is on the bottom.

**If you’re using the printed X carriage, it will look like this.**

![](media/image64.png){width="6.5in" height="4.694444444444445in"}

**If you’re using the aluminum parts, your front X carriage will look
like this (the engaving faces in towards the center of the printer)**

You need to adjust the number of shims above the top idler to
eliminate any play in the stack. If you only have a single bag of
shims, use one M5 washer at the top of the stack, and 3 shims.

![](media/image53.png){width="5.4320330271216095in"
height="3.682292213473316in"}

Here’s a photo to show what the aluminum carriage looks like

![](media/image74.png){width="4.630208880139983in"
height="3.4675120297462816in"}

Now take your 400mm MGN 12 Y rail, and place the Back X Carriage and
Front X Carriage over the ends of the rail. The bolt holes should face
out, for attaching to the X carriages, and the X carriages should point
out in the same direction as the carriage on the Y rail as in the
picture below. Place an M3 Nut into the small slot in each of the
carriers, and place an M3 x 16mm button head bolt in the side of each
carrier. Do not tighten these down yet.

![](media/image20.png){width="6.5in" height="3.7916666666666665in"}

Remove any tape you have holding down the MGN12 X carriages, then
attach the X carriages to the two MGN12 X carriages using (4) M3 x 8mm
Button head bolts each. The idlers should be towards the right side of
your printer. Tape these back down so your Y axis doesn’t slide off
the rails!

![](media/image80.png){width="6.5in" height="6.805555555555555in"}

You may wish to tape the Y carriage in place so it doesn’t rattle
around.

Steppers 
---------

Parts needed in this step:

\(2) X/Y Nema17 Stepper motors (0.9 Degree E3D Steppers if building the
Kit)

Front\_Motor\_Mount

Rear\_Motor\_Mount

\(20) M3 x 10mm Button Head Bolts

\(14) M3 washers

\(2) 16t pulleys

**SCROLL DOWN IF YOU HAVE THE ALUMINUM STEPPER MOUNTS**

All of the steppers install on the upper right extrusion, when facing
the front of the printer.

Starting with the back motor mount (the cutout for clearancing a bolt
should be towards the center of the printer), begin by attaching it to
the right side of the printer frame using (2) M3 x 10mm button head
bolts. The bolts will go into two of the M3 nuts you dropped into the
frame at the beginning. Use the two M3 nuts closest to the back of the
frame! Then attach one of your steppers to it using (4) M3 x 10mm
button head bolts. Position the stepper all the way in towards the
printer body in the slots. Attach a 16T pulley to it. Orient the
Pulley so the grub screw collar is down, and the threads are on top.
Don’t crank the stepper or the pulley down tight yet, as they’ll be
adjusted later.

![](media/image65.png){width="6.5in" height="2.9722222222222223in"}

Attach the front motor mount the same as you did the rear, using (2)
M3 x 10mm button head bolts to attach it to the extrusion, and then
(4) M3 x 10mm button head bolts to attach the stepper. Position the
stepper all the way in towards the printer body in the slots. Get the
bolts snug, but don’t crank them down as you’ll need to adjust the
spacing later. Attach a 16 T pulley to the front stepper, this time
with the grub collar towards the top and the teeth down.

![](media/image43.png){width="6.5in" height="4.333333333333333in"}

Note the front pulley has its teeth to the bottom and the rear pulley
has its teeth to the top. This is critical.

 Aluminum Stepper Mounts
------------------------

If you have the aluminum Stepper Mounts, they should look like this -
attach to the frame using (4) M3 x 10mm Button head bolts, attach the
steppers as indicated for the plastic mounts above, using (4) M3 x 8mm
button head bolts per stepper.

:![](media/image109.png){width="4.425780839895013in"
height="5.901042213473316in"}

\
-

Idler Carriers
--------------

Front\_Stationary\_Idler\_Carrier

Back\_Stationary\_Idler\_Carrier

\(2) Idler\_Spacer

\(4) M5 x 50mm cap head bolts

\(4) M5 lock nuts

\(4) GT2 20T x 5mm bore toothed idlers

\(8) M5 washers

\(4) M3 x 10mm button head bolts

If using the aluminum Idler carriers you need (2) 20mm Shoulder bolts
and (2) 10mm shoulder bolts instead of the M5 bolts & nuts

###  Back Stationary Idler Carrier

Begin by assembling the back idler carrier. The outside of the carrier
has a longer tab that points down, with a screw hole. On the back
carrier, that’s the side that gets the Idler spacer. **(NOTE: Replace
the washers in these steps with shims. Instead of the printed spacer
you can use a spare idler as a spacer to make aligning easier)** Take
a 5mm cap head bolt, and place a GT2 20T idler on it, then an m5
washer, then your idler spacer. Insert this bolt into the outside of
the carrier, and lock it on with an m5 washer & lock nut. You want it
to be snug, but still allow the idler to spin freely.

Take another m5 x 50mm cap head bolt, and put a GT2 20T idler on,
followed by an m5 washer. Put this through the 5mm hole on the inside
of the carrier, and lock it on using an m5 washer and nylon lock nut.
Again, make it tight, but so that the idler still spins freely.

![](media/image83.png){width="6.5in" height="3.486111111111111in"}

**If you’re using the aluminum idler carriers, they should look like
this**

**Be very careful when threading the shoulder bolts in - it can help
to thread one in from the back to open it up some. These are very easy
to cross thread.**

You need to adjust the number of shims below the idlers to eliminate
any play in the stack. You may need to use one washer in place of some
of the shims so you have enough. These are attached using (4) M3 x 8mm
Button head bolts.

![](media/image18.png){width="4.46875in" height="3.90625in"}

![](media/image78.png){width="6.5in" height="2.7083333333333335in"}

Place the back idler carrier over the top of the left extrusion, in
the back corner of the printer. Be sure the tab is on the outside of
the printer. Use (2) M3 x 10mm bolts to attach it to the two M3 nuts
closest to the back of the printer. It should be against the back
rail, we’ll adjust it more later, so it only needs to be snug for now.

![](media/image10.png){width="6.5in" height="3.1527777777777777in"}

###  Front Stationary Idler Carrier

Now we’ll assemble the front idler carrier much the same way, but the
idler is reversed. The outside of the carrier has a longer tab that
points down, with a screw hole. On the front carrier, it gets only a
GT2 20T idler. Take a 5mm cap head bolt, and place a GT2 20T idler on
it, then an m5 washer. Insert this bolt into the outside of the
carrier, and lock it on with an m5 washer & lock nut. You want it to
be snug, but still allow the idler to spin freely.

Take another m5 x 50mm cap head bolt, and put a GT2 20T idler on,
followed by an m5 washer, then an idler spacer. Put this through the
5mm hole on the inside of the carrier, and lock it on using an m5
washer and nylon lock nut. Again, make it tight, but so that the idler
still spins freely.

![](media/image21.png){width="6.5in" height="4.694444444444445in"}

**If you’re using the aluminum idler carrier, it should look like this**

**Be very careful when threading the shoulder bolts in - it can help
to thread one in from the back to open it up some. These are very easy
to cross thread.**

You need to adjust the number of shims below the idlers to eliminate
any play in the stack. These are attached using (4) M3 x 8mm Button
head bolts.

![](media/image70.png){width="4.119792213473316in"
height="4.278244750656168in"}

![](media/image90.png){width="6.5in" height="2.9444444444444446in"}

Place the front idler carrier over the top of the left extrusion, in the
front corner of the printer. Be sure the tab is on the outside of the
printer. Use (2) M3 x 10mm bolts to attach it to the two M3 nuts closest
to the front of the printer. It should be against the front rail. We’ll
adjust it more later, so it should only be snug for now.

![](media/image96.png){width="6.5in" height="3.4583333333333335in"}

\
-

Y Carriage Installation
-----------------------

Parts needed in this step:

Y\_Carriage

E3DV6\_Groove\_Mount

Titan\_Mount / BMG Mount

Y\_Endstop\_Mount

IR\_Probe\_Mount or BLTouch Mount

IR Probe or BLTouch

\(15) M3 x 8mm button head bolts

\(2) M3 Nuts

\(2) m2 x 12mm bolts (from the IR probe kit)

\(2) m2 nuts

Taking your Y carriage, line it up with your Y linear rail carriage
(remove any tape if you were holding it in place!) and attach it using
(4) M3 x 8mm Button Head Bolts.

![](media/image29.png){width="6.5in" height="4.083333333333333in"}

### Probe option: BLTouch

It’s easiest to attach the BLTouch to the mount, before installing the
BLTouch mount on the printer. When installing it, use (2) M3 x 20mm
button head bolts, pass them through the holes in the BLTouch, then
put on (2) M3 brass inserts as spacers. Then slide the bolts through
the holes in the BLTouch mount, and put on the M3 nuts, as pictured.
(A short bit of belt between the bltouch and the mount makes a nice
vibration damper)\
\
![](media/image104.png){width="4.130208880139983in"
height="5.506944444444445in"}

Next, attach the BLTouch mount to the bottom left two holes on the Y
carriage using (2) M3 x 8mm Button Head bolts.

### Probe option: IR Probe

Attach the IR Probe mount to the lower two of the leftmost brass
inserts) on the Y carriage using (2) M3 x 8mm Button head bolts. (You
may find it easier to attach the IR probe before installing the mount)

### Y endstop and BMG Mounts

Attach the Y endstop mount to the bottom right two holes using (2) M3
x 8mm Button head bolts.

Attach the titan/BMG mount to the 4 brass inserts on the Y carriage
using (4) M3 x 8mm button head bolts.

![](media/image69.png){width="5.71875in" height="4.010416666666667in"}

![](media/image68.png){width="6.0625in" height="3.7083333333333335in"}

Attach the mini-IR probe to the IR Probe mount, attach it on the back
side of the mount, with the wire headers pointed towards the rear of
the printer. Use the m2 nuts and bolts (12mm m2 bolts) (Some IR probes
come with m2.5 nuts and bolts, those can also be used) It’s a good
idea to trim the back of the pins on the IR probe so it fits better on
the mount. It can also be helpful to bend the pins to point up at a 90
degree angle (or desolder the pins, and solder on a right angle pin).
Doing this is recommended, but can gain you some Y distance.

![](media/image42.png){width="6.5in" height="4.277777777777778in"}

Before installation of the groove mount, you need to insert (2) M3
nuts, one into the slot on each side of it.

![](media/image25.png){width="4.739583333333333in"
height="3.8541666666666665in"}

Attach the groove mount using (3) M3 x 8mm button head bolts using the
top hole in the groove mount, and the bottom two holes, match them up
the the brass inserts in the Y carriage.

![](media/image98.png){width="6.5in" height="4.472222222222222in"}

\
-

X/Y Belts
---------

Parts used in this step:

GT2 belt

\(4) Belt\_Retainer\_Clip

\(4) M3 x 45mm cap head bolts

\(4) M3 x 16mm button head

\(8) M3 washers

\(4) M3 nylon lock nuts

###  Front / Lower Belt

Take one end of your GT2 belt (the 5m long spool of it) and clip it
into one of the belt retainer clips Match the teeth of the belt up to
the teeth in the clips, and loop it around the shorter side. Leave
about an inch extend past the edge of the clip.

![](media/image28.png){width="6.25in" height="5.229166666666667in"}

Using (1) 45mm cap head bolt, secure that into the Y carriage in the
bottom hole facing the front of the printer. The teeth on the belt
should be pointing towards the left side of the printer body. You
should be able to tighten the clip down until it’s flush with the
front of the Y carriage.

![](media/image60.png){width="6.5in" height="4.75in"}

Now we’re going to thread this belt through. It comes straight out
from the Y carriage, and around the smooth idler on the front X
carriage. The back of the belt should be against the idler. It will
bend at a 90 degree angle to the right around the idler, and go around
the front stepper pulley. The teeth should grip the pulley. Come back
across the front of the printer, and around the single stack toothed
idler on the front idler carrier. It then goes along the left side of
the printer, and around the single stack toothed idler on the rear
idler carrier. It then passes along the back of the printer to the
lower toothed idler on the back X carriage. It will then return to the
Y carriage, in the lower belt retainer spot on the rear of the Y
carriage. Attach another belt retainer clip, test the fit to make sure
the belt is going to be tight. (Fine tuning of the belt tension will
come later, so don’t worry about really cranking it down yet). Use (1)
M3 x 45mm cap head bolt to attach the belt retaining clip into the Y
carriage. Once you’re satisfied with the position of the clip, cut the
excess belt, leaving about an inch extending out from the clip.

![](media/image12.png){width="5.59375in" height="4.875in"}

![](media/image99.png){width="6.5in" height="5.402777777777778in"}

Front / Lower belt path

### Rear / Upper belt

The rear stepper belt is installed much the same way. Begin by looping
the belt over one of the belt retainer clips, again, leave an inch or
so of extra. Using (1) 45mm cap head bolt, secure that into the Y
carriage in the top hole facing the front of the printer. The teeth on
the belt should be pointing towards the left side of the printer body.
You should be able to tighten the clip down until it’s flush with the
front of the Y carriage.

![](media/image32.png){width="6.09375in" height="4.072916666666667in"}

Now we’re going to thread this belt through. It comes straight out
from the Y carriage, and around the toothed idler on the front X
carriage. The teeth of the belt should be against the idler. It will
bend at a 90 degree angle to the left around the toothed idler, and go
back across the front of the printer, and around the upper toothed
idler on the front idler carrier. It then goes along the left side of
the printer, and around the upper outside toothed idler on the rear
idler carrier. It then passes along the back of the printer to the
toothed pulley on the rear stepper. The teeth should engage the pulley
teeth. The belt then goes back along the rear of the printer, and
around the upper smooth idler on the rear X carriage. The back of the
belt should be against the idler. It will then return to the Y
carriage, in the upper belt retainer spot on the rear of the Y
carriage. Attach another belt retainer clip, test the fit to make sure
the belt is going to be tight. (Fine tuning of the belt tension will
come later, so don’t worry about really cranking it down yet). Use (1)
M3 x 45mm cap head bolt to attach the belt retaining clip into the Y
carriage. Once you’re satisfied with the position of the clip, cut the
excess belt, leaving about an inch extending out from the clip.

![](media/image93.png){width="5.052083333333333in"
height="4.510416666666667in"}

Rear stepper / Upper Belt path

![](media/image73.png){width="6.5in" height="5.277777777777778in"}

The rear stepper / upper belt path

### Aligning the Belts

We now need to align the belts to get good precision out of your
printer. This step is very critical, so take your time.

First, adjust the height of your stepper pulleys, so the belt paths
are parallel to the frame. To do this, simply loosen up the pulley
grub screws and move them up or down until the belts are parallel. I
used a bubble level to be sure my frame was level, then levelled the
belts to match.

Once both stepper pulleys are set, you need to adjust your steppers
and idler carrier positioning to your belts are square. The idea is
that the belt turns at exactly a 90 degree angle when it goes around
the X carriages. You need to loosen up your M3 bolts holding your
stepper and your idler carriers, and adjust them until the belts are
at a 90 degree angle. (For the idler carriers, the belt should be at a
90 degree angle when the carrier is flush against the outside rail)

In the below drawing, the belts are highlighted to show the segments
you’ll be adjusting until they’re at 90 degree angles. The two green
segments should be at 90 degrees, the two red at 90 degrees, etc. In
the end, the green and red at the back of the printer should be
parallel to the frame.

![](media/image55.png){width="6.5in" height="5.388888888888889in"}

Once the belts are aligned, you should snug up the M3 bolts on the
stepper and idler carriers connecting them to the frame - you don’t
want these to move now! (I put a little loctite on mine, but it’s not
required)

### Reinforce the motor mounts and idler carriers

Once you’re satisfied in the position of the belts, and have the idler
carriers and motor carriers locked in place, we need to secure them
with a bolt to help prevent them flexing. (**If you have the optional
aluminum motor mounts & idler carriers from 713Maker, you can skip
this step**).

First, take off your belts by removing the (4) M3 x 45mm cap head
screws from the Y carriage (You can remove two, and leave two in, or
even just loosen them up enough to slip the belts off of the stepper
pulleys - you just need the belts off so you can remove the steppers).
Then remove the X/Y steppers from their motor mounts by removing the
(8) M3 x 8mm button head bolts.

Starting with the idler carriers, use a 3mm drill bit, and drill
straight in through the hole in the tab. Once you’ve drilled the
holes, use (2) M3 x 16mm button head bolts, and on the inside use an
M3 washer & nylon lock nut to lock them in place.

![](media/image1.png){width="6.5in" height="3.9583333333333335in"}

Now we do the same with the X/Y stepper mounts. Drill a hole in the
melamine through the hole in the printed part. Secure these with (2)
M3 x 16mm button head bolts, (2) M3 washers, and (2) M3 nylon lock
nuts.

![](media/image51.png){width="6.5in" height="3.5in"}

You can now reinstall the steppers, and then reinstall the X/Y belts.

\
-

Hotend, Endstops, Linear Rail adjustment
----------------------------------------

X\_Endstop\_Mount

E3DV6\_Hotend\_Retainer

E3D V6 Hotend

E3D Titan extruder / Bondtech BMG extruder

PTFE Tubing

Extruder Stepper

Cooling\_Shroud

50mm Blower fan

\(2) Endstop switches

\(2) 2 pair wire, 22 gauge, 1m long

\(4) M2 x 12 bolts

\(4) M2 nuts

\(2) M3 x 30mm button head bolt

\(12) M3 washers

\(2) M3 x 10mm button head bolts

\(2) Rail\_Alignment\_Tool

###  Endstops

**IF YOU HAVE A KIT, YOUR ENDSTOPS ARE PRE-WIRED.\
**

We wire the endstops “Normally Closed” - wire your switches to the
outside two connectors as pictured below:

![](media/image75.png){width="6.5in" height="5.375in"}

Connect one of these to the Y endstop carrier that you installed
earlier using (2) M2 x 12mm bolts and (2) M2 nuts.

![](media/image3.png){width="4.546875546806649in"
height="3.784630358705162in"}

Attach the second endstop switch to the X endstop mount using (2) M2 x
12mm bolts and (2) M2 nuts. Then attach your X endstop mount to the
top of the top rear extrusion, all the way against the left end (it
will be next to the rear idler carrier) using (2) M3 x 8mm button head
bolts.

![](media/image40.png){width="4.7080489938757655in"
height="3.119792213473316in"}

(Note: I’ve taped the wiring inside the bottom of the rear extrusion
to hide it in this photo, just drape it over the back of the printer,
below your belts, for now)

### Hotend and Extruder

If you haven’t already, you need to assemble your E3D V6. For that,
follow E3D’s instructions here:
[*https://e3d-online.dozuki.com/Guide/V6+Assembly/6*](https://e3d-online.dozuki.com/Guide/V6+Assembly/6)

Your hotend should now look something like this:

![](media/image58.png){width="6.5in" height="4.388888888888889in"}

There might be a few differences - I like to tidy up my wiring using zip
ties. I’m using a collet clip from seemecnc to keep the retaining collet
locked in place. I also use (and highly recommend) Carpricorn’s low
friction PTFE tubing. You want a good bit of extra, we’ll trim it down
soon.

The next part is a little tricky, you’ll need to assemble your E3D titan
following the guide here for a bowden install:
[*https://e3d-online.dozuki.com/Guide/1.75mm+Bowden+Titan+Assembly/20*](https://e3d-online.dozuki.com/Guide/1.75mm+Bowden+Titan+Assembly/20)\
\
If you have the bondtech BMG, watch the video here (sub in the e3d
bowden coupling not the hotend itself):
[*https://www.youtube.com/watch?v=dTUppEUFXVE*](https://www.youtube.com/watch?v=dTUppEUFXVE)

When you get to Step 10 & 11 of the Titan guide, it talks about cutting
the tubing. (This also applies equally to the BMG) This needs to be
precise. On the railcore there is a 25mm gap between the top of the v6
and the bottom of the titan. You need to add that space to the 16mm they
tell you to leave, for a total of 41mm extending out of the end of the
v6. (The total length of the PTFE should be 91mm) Personally, I
recommend cutting it even longer, and shortening it down as needed until
it fits. You can always remove some, it’s much harder to put it back
together.

So, start with 45, or even 50mm. Slide the bowden coupler on, then the
1.75mm titan filament guide tube onto the end of the PTFE, and test fit
the v6 in the groovemount. Cut a few mm off the PTFE at a time until
it’s a snug fit with no play. So as you slide the hotend into the
groovemount on the Y carriage, you’re sliding the bowden coupler into
the groove on the titan at the same time.

Once that’s done and fits snugly, proceed with the rest of the titan
instructions. When you are putting the bolts on the titan to close it,
you’ll find you need (3) 3mm washers per each of the three bolts to
tighten it down due to the spacing of the railcore’s titan mount. (Extra
washers are not needed for the bondtech BMG)

![](media/image100.png){width="5.552083333333333in" height="4.75in"}

Once your titan is assembled, lock in your E3D v6 using (2) 30mm Button
head bolts to attach the E3DV6 Retaining Clip to the groovemount.

![](media/image26.png){width="5.09375in" height="3.9479166666666665in"}

###  Cooling Fan

Place the 50mm blower fan into the cooling shroud (it will friction
fit) and then bolt the cooling shroud onto the bottom of the Y
carriage using (2) M3 x 10mm Button Head Bolts. I cut a short length
of GT2 belt to put above the fan, between the top of the fan and the
bottom of the Y carriage, to keep it pressed in more firmly. You may
need to add a couple of m3 washers between the fan shroud and Y
carriage, to lower it until the shroud is pointing just at the tip of
the v6 nozzle. (I use two washers per bolt on mine).

![](media/image24.png){width="4.75in" height="4.28125in"}

###  X Endstop and Rail Adjustment

You should now have all the components installed on your X/Y axis,
it’s time to align your X rails. Take off any masking tape you still
have holding things in place. Carefully move your Y rail towards the
left side of the printer, keeping the Y carriage centered on it. Watch
that the carriages don’t go off the end of the X rails - if they’re
close to doing so, stop, loosen up your X rail bolts, and adjust them
to the left.

Loosen the two bolts on your X endstop, and move it towards the right
side of your printer, until there is a 25mm space between it and the
inside face of your top left extrusion. Tighten down the bolts for
your X endstop. Later, once your Z axis and bed is installed, you can
adjust this so your hotend moves nicely and doesn’t hit your yokes,
and X0 should be at the edge of your bed.

Now, move your Y rail to the center. Loosen up your two X linear
rails, and slide them to the right until the left ends of the MGN12
linear rails are also 25mm away from the left extrusion of your
printer. Place your two rail alignment tools one on each of of the
rail to be sure it’s centered on the extrusion, and then tighten down
all 4 bolts holding the rail to the extrusion. Repeat for the other
rail.

As a final step, make sure your Y MGN12 linear rail is centered front
to back on the printer between the X carriages, and tighten down the
horizontal retaining screws you installed in them earlier. Don’t worry
about squaring it yet, we’ll do that later.

![](media/image46.png){width="6.5in" height="3.9722222222222223in"}

\
-

Z Axis Installation
-------------------

\(3) Nema 17 Steppers

\(3) M5 / M8 Leadscrew Couplers

\(3) 450mm Leadscrews

\(3) Anti-Backlash leadscrew nut

\(24) M3 x 10mm Button Head Bolts

\(12) M3 x 12mm Button Head Bolts

\(1) Z\_Yoke\_1

\(2) Z\_Yoke\_2

Begin by using (4) M3 x 12mm Button Head Bolts to attach the bottom of
the leadscrew nuts to the Z Yokes. If your leadscrew nuts have
threaded holes these just feed up through from the bottom of the Z
yoke and thread into the nut. If the holes are not threaded, you’ll
need to use M3 x 16mm button head bolts, and M3 nuts. Repeat for all 3
yokes.

![](media/image31.png){width="3.8854166666666665in"
height="2.78125in"}

Thread the leadscrew into the leadscrew nut (install the spring and
top of the anti-backlash nut). Repeat for all 3 Z yokes.

![](media/image9.png){width="1.9479166666666667in"
height="7.026042213473316in"}

Next, attach the 3 Z steppers to the bottom panel using (12) M3 x 10mm
Button Head bolts. **If you are building a ZLT, the stepper is held on
using the printed bearing block and 50mm m3 bolts. Attach the coupler
to the stepper. Place a 608zz bearing into the bearing block. Then
bolt the stepper to the bottom panel using the bearing block and (4)
m3 x 50mm bolts. (Scroll down past the 300ZL steps for a picture)**

**300ZL:**![](media/image23.png){width="6.5in"
height="3.8177088801399823in"}

![](media/image16.png){width="6.5in" height="4.140625546806649in"}

Install the leadscrew coupler on all three Z steppers using the
included grub screws.

![](media/image87.png){width="6.479166666666667in"
height="5.385416666666667in"}

(Repeat for the Right side, not pictured)

**300ZLT:**

![](media/image79.png){width="4.447916666666667in"
height="4.052083333333333in"}

Place the leadscrews into the Couplers, and attach the yokes to the
linear rail carriages using (4) M3 x 10mm Button Head Bolts per yoke
(if you have the aluminum Z yokes, they need to be 12mm). The Front
left gets the Z\_yoke\_1, the other two get Z\_yoke\_2. (They’ll only
match up to the carriages in one way.)

![](media/image106.png){width="6.5in" height="5.861111111111111in"}

To align the Z extrusions, move the yoke all the way to the bottom
(don’t let the carriage run off the rail). Tighten up the bottom of
the extrusion. Use a square to align the extrusion at a 90 degree
angle to the side extrusions. When you’re done, ensure you can still
run the yoke up and down smoothly by hand. (It can be difficult to fit
a square behind the leadscrew. Once the bottom is locked in place, you
can optionally remove the leadscrew temporarily to help square the Z
extrusions)

Bed installation
----------------

Bed

Thermistor

RTV

LokBuild

\(3) M3 x 20mm Button Head bolts (Optionally, 5/16 nylon bolts)

\(3) M3 Nylon Lock Nuts

\(3) M3 Washers

\(3) Nylon Washers

\(3) Nylon Spacers (or rubber washers)

### Preparation

For the bed, we need to start with some prep.

There is a groove on the top of your bed - this is for the thermistor.

Install your thermistor in the channel on the top of the bed. If you
bought the thermistors in the BOM, they have very long leads on them,
and are protected in rubber all the way up to the bead. Be careful
with the thermistor, the bead is glass, and if it’s broken it won’t
give a reading, or will be way off. Place the thermistor into the
channel in the top of the bed. Use some RTV silicone to hold the bead
in - I covered about ⅜” of the thermistor in RTV - just the end near
the glass bead, and a bit near the side of the bed. Use a razor blade
to clean up the excess RTV and let it dry. (Kapton tape can be used to
cover it until it’s dry)

I cut my lokbuild so it matched the size of the entire bed surface,
and carefully placed it over the bed. Be sure the thermistor is flush
with the top surface, so you don’t get a bump in the lokbuild. (If you
used kapton to hold the RTV, remove it before installing the lokbuild)
Start from one corner and slowly apply it to the bed. IF YOUR LOKBUILD
DOESN’T COMPLETELY COVER THE BED SURFACE YOU MAY WISH TO WAIT AND
PLACE IT ONCE YOU CAN VERIFY THE RANGE OF YOUR NOZZLE. Being flush to
the left side of the bed is probably ideal.

Next install your Keenovo on the bottom of the heated bed. I tested
the fit of mine with the backing on first, and marked with a pencil
where it should go. It should be centered front to back, and
approximately 5mm away from the left edge. The keenovo’s adhesive is
EXTREMELY sticky, so once it’s placed you’re not moving it. Be sure
the leads exit the correct side of the bed. They should go in the same
direction as the thermistor channel on the top of the bed.

###  Bed

Install the bed using the 20mm Bolts. They fit through the top of the
slot on the bed, with a M3 fender washer washer (in place of the nylon
washer in the image below). There should be a nylon spacer or rubber
washer between the bed & yoke. **The current best recommendation are ¼
Flat faucet washers. You can get them at any hardware store** Below
the yoke install a M3 fender washer & Nylon lock nut. These should be
snug, but do not Overtighten. It’s important the bed can shift and
tilt slightly in the yokes, if not, the Z leveling will bind.

![](media/image89.png){width="6.5in" height="2.6527777777777777in"}
-------------------------------------------------------------------

\
-

Electronics
-----------

Parts needed for this step:

\(4) Electronics Box Corner

\(2) Electronics Box Side Panels

Electronics Box Top Panel

Electronics Box Cover

PSU

Duet Wifi

Switch\_Box or Switch\_Box\_Tall (switch box tall has more room for
deeper switches)

Switch\_Plate (For 29mm x 11mm switches)

Short\_Switch\_Plate (For 19.5 x 11mm switches)

Switch\_Box\_Cover

Filament Guide

PTFE Tubing

\(4) M3 x 16mm button head bolts

\(12) M3 Washers

\(14) M3 Nuts

\(6) M3 x 12mm Button Head Bolts

\(4) M3 Fender washers

\(4) M3 x 20mm button head bolts

\(4) nylon or printed spacers

\(4) M3 x 10mm button head bolts

###  **SAFETY**

### THE RAILCORE IS A “DIY” PROJECT - BUILD SAFE, BUILD SMART, AND BE RESPONSIBLE. WHEN IN DOUBT, DOUBLE CHECK THINGS. 3D PRINTERS CAN GET VERY HOT, USE COMMON SENSE AND QUALITY COMPONENTS. **BUILD AT YOUR OWN RISK!** 

###  Electronics Enclosure

Bolt each of the 4 standoffs into the holes on the right side of the
printer (Below the steppers) using (4) M3 x 16mm button head bolts,
(8) M3 Washers and (4) M3 nuts. The brass inserts should face out away
from the side panel. Note these go in the top & bottom most set of
holes. There is a center set that is not currently used.

![](media/image91.png){width="6.5in" height="5.375in"}

Attach the top and side panels to the Electronics box corners. Each
Panel gets (4) M3 x 16mm Button head bolt and (4) M3 nuts. You should
leave the front panel off, so you can get to the USB port on your duet
to do its initial configuration.

![](media/image7.png){width="6.333333333333333in"
height="5.291666666666667in"}

Again, it’s best to leave the front panel off for now. Just install
the top and rear.

Install the power switch in the rear panel using (2) M3 x 10mm button
head bolts.

![](media/image35.png){width="6.5in" height="4.722222222222222in"}

IF BUILDING THE KIT VERSION, FOLLOW THE INSTRUCTIONS HERE: [*https://docs.google.com/document/d/1aIc6x7Vzb-bH8-pILNBV1cXyp3JWsIa50Y6eSjMmCgM/edit*](https://docs.google.com/document/d/1aIc6x7Vzb-bH8-pILNBV1cXyp3JWsIa50Y6eSjMmCgM/edit) 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Mount the PSU & Duet

Assuming you bought the PSU & duet wifi controllers from the BOM, the
suggested mounting locations are in the picture below. If you
self-sourced you’ll need to line your PSU up and mark the holes and
drill them (use a ⅛” or ¼” drill bit). For kit users the holes are
pre-drilled. **Check your PSU voltage switch** - if you’re in the US,
it should be set to 120v - it’s far easier to do it before it’s
mounted.

![](media/image6.png){width="6.5in" height="6.277777777777778in"}

I attached my Duet Wifi with (4) M3 x 20mm button head bolts, (4) M3
washers (4) M3 nuts, and used some nylon spacers as standoffs so it
was not against the side panel.

For the PSU, use (4) M4 x 12mm Button Head Bolts, (4) M4 Fender
washers (so the bolts would not pull through the holes in the PSU),
and (4) M3 nuts.

Here are some sample wiring configurations

![](media/image19.png){width="6.5in" height="6.5in"}

(Photo Courtesy of Jesse Williams)

![](media/image17.png){width="6.5in" height="4.333333333333333in"}

(photo courtesy of Nate Stuart)

### Wiring

This guide will not cover the intricacies of wiring the duet, but
there are some recommendations. If you bought exactly what was in the
BoM and followed this guide, these will help.

The full duet wifi wiring diagram is here. A basic version of the
wiring diagram is provided, but we recommend you use the wiki as the
guide to wiring your duet.
[*https://duet3d.com/wiki/Duet\_WiFi\_and\_Ethernet\_wiring\_diagrams*](https://duet3d.com/wiki/Duet_WiFi_and_Ethernet_wiring_diagrams)

**Crimp all your connections**

![](media/image84.png){width="6.5in" height="4.958333333333333in"}

![](media/image103.png){width="6.5in" height="4.930555555555555in"}

Connect your front stepper to the Y stepper connection

Connect your rear stepper to the X stepper connection

Connect your Extruder stepper to the E0 stepper connection

Connect your Y endstop switch to the Y endstop Y Stop & GND pins

Connect your X endstop switch to the X endstop X Stop & GND pins

Connect your hotend to E0 Heater

Connect your hotend thermistor to E0 Thermistor1

Connect your bed heater to the SSR & Heated Bed (Follow the SSR
diagram below)

Connect your bed thermistor to Bed Thermistor 0

Connect your Hotend Fan to one of the Always On Fans

Connect your Layer fan to PWM Fan 0

Connect your BLTouch to the Z\_Probe Port on the Duet, and to the PWM1
Port on the Duex5

-OR-

Connect your IR Probe to the Z Probe port

The Z steppers for the ZL version are very important. They all 3 go in
the duex5 connectors, refer to the diagram here:
https://d17kynu4zpq5hy.cloudfront.net/igi/duet3d/PbDcMOmnILiIAmUu

Connect the front left stepper to the Drive 5 connector

Connect the rear left stepper to the Drive 6 connector

Connect the right side stepper to the Drive 7 connector

Lastly connect your PSU to Power in. USE CRIMPED CONNECTORS for your
120v power connections.\
\
For wiring 12v to the duet, see the guide here, pay special attention
to the requirements for ground to the duet & duex5:

[*https://duet3d.dozuki.com/Wiki/Duex2\_and\_Duex5\_Features\#Section\_Wiring*](https://duet3d.dozuki.com/Wiki/Duex2_and_Duex5_Features#Section_Wiring)

For power to the Bed/SSR, see this Diagram (I’ll work on a better
diagram soon!):![](media/image38.png){width="4.063476596675415in"
height="7.223958880139983in"}

### Final Touches

The electronics box cover is attached using (4) M3 x 8mm Button head
bolts.

![](media/image36.png){width="6.5in" height="7.430555555555555in"}

There are some sample prints that can be used for fan vent covers and
a PSU vent cover - these can be attached to the electronics box cover
using (4) M3 x 8mm Button head bolts each.

Do a power on (smoke test) Before closing up the printer.

The optional filament guide can be attached onto the top right
extrusion using (1) M3 x 8mm button head bolt.

![](media/image2.png){width="6.5in" height="3.888888888888889in"}

For my cabling, I ran a PTFE connection from the filament guide to the
top of the titan, then used wire wrap to wrap the entire bundle of
wiring to the PTFE. (along with a couple zip ties).

![](media/image110.png){width="6.5in" height="4.875in"}

\
-

Smoke Test
----------

First, Connect a USB cable to the duet, and connect using a serial
console such as pronterface. Issue M115 and be sure you see both the
duet and the duex5. If not, stop and resolve that issue before
proceeding.\
\
Now you should be ready to power on 24v power, and the system should
come up.

Getting connected to the network
--------------------------------

Follow the guide here:
[*https://duet3d.dozuki.com/Guide/1.)+Getting+Connected+to+your+Duet/7*](https://duet3d.dozuki.com/Guide/1.)+Getting+Connected+to+your+Duet/7)

Adjusting Your belts and levelling your bed
-------------------------------------------

Once your smoke test is done and good, you’ll want to do the final
belt tensioning. These steps should be done periodically as your belts
stretch, etc. So it’s a good idea to be familiar with them.

###  X/Y Belts

Loosen up both of your steppers, and make sure they’re all the way in
towards the printer. The belts should already be tight enough you
can’t just pop them off. If they’re not, adjust your belt end clips
until they are. Then, pull your rear stepper by hand to put a
reasonable amount on tension in the belt. You’ll cause the Y carriage
to move, that’s OK. You don’t need this belt to to be super tight.
Tighten down the 4 button head bolts for the rear stepper. Now, pull
the front stepper while checking if the Y rail is at a 90 degree angle
to the X rail. When the two are precisely at 90 degrees to each other
that’s when your belts are correctly tensioned. This can be tricky to
do with just one person.

###  

\
-

Firmware
--------

#### The provided config files should be considered a baseline starting point if you followed the BOM. These files are confirmed to work with with RepRapFirmware v2.01 or later.\
You can find the newest version here: [*https://github.com/dc42/RepRapFirmware/releases/latest*](https://github.com/dc42/RepRapFirmware/releases/latest)

Self Source Config:

[*https://www.dropbox.com/sh/ngmhj4oif2dm8yg/AAC218nV-xNu42qalPdI8IHXa?dl=0*](https://www.dropbox.com/sh/ngmhj4oif2dm8yg/AAC218nV-xNu42qalPdI8IHXa?dl=0)

Kit Config:\
[*https://www.dropbox.com/sh/og8bolggmqlfrsv/AAAbZ0enHyIRuYoy7knaQSbEa?dl=0*](https://www.dropbox.com/sh/og8bolggmqlfrsv/AAAbZ0enHyIRuYoy7knaQSbEa?dl=0)

Back up the /sys file off the SD card. Then replace the config.g bed.g
home\*.g files with the ones from the config. The macro files can go
in the macros folder on the SD card. If you're using an IR probe or
piezo, delete the retractprobe.g and deployprobe.g files from the /sys
folder

For connecting to it, follow the guide here:
[*https://duet3d.dozuki.com/Guide/1.)+Getting+Connected+to+your+Duet/7*](https://duet3d.dozuki.com/Guide/1.)+Getting+Connected+to+your+Duet/7)

It’s highly recommended you familiarize yourself with the duet, and
update the firmware to the latest stable release.\
[*https://duet3d.dozuki.com/\#Section\_START\_HERE*](https://duet3d.dozuki.com/#Section_START_HERE)

\
-

First Moves
-----------

**This section is written to be followed in order. DO NOT SKIP STEPS.
Complete each before moving on to the next.**

For your X/Y stepper direction, follow the instructions documented
here:\
[*https://www.duet3d.com/wiki/Configuring\_RepRapFirmware\_for\_a\_CoreXY\_printer*](https://www.duet3d.com/wiki/Configuring_RepRapFirmware_for_a_CoreXY_printer)

Specifically for the X stepper, starting with the hotend over the
center of the bed:\
G91\
G1 S2 X10 F3000

Should move your hotend in the +X +Y directions (to the right and back
of the bed)

**If not you need to reverse the X stepper direction in config.g (M569
P0 value)**

And for the Y stepper:\
G91\
G1 S2 Y10 F3000

Should move your hotend in the +X and -Y directions (to the right and
front of the bed)

**If not you need to reverse the Y stepper direction in config.g (M569
P1 value)**

And for the Z steppers:

Test (with your finger on the power button) lowering your bed by
sending:

G1 Z10 S2

If all three of the steppers don’t move down, power off and make
corrections by reversing the appropriate stepper in config.g. You can
reverse the direction of an individual stepper by editing the S0 / S1
value for it.

Test each of your endstop switches to be sure they work. By pressing
them with your finger before you try homing (Follow the RRF wiki)

You can see the Endstop status in the web gui, Settings, Machine
properties tab

The X & Y endstops should read “No”, and when pressed change to “Yes”

If this is not the case, find the M574 line in your config.g file and
change the S\# (if it’s 0, make it 1)

Test your Z-Probe to be sure it is working. (Follow the RRF Wiki)

If you are using the IR Probe, start with it shifted all the way to
the top (the mount is adjustable)

In the gui you should see the “Z Probe” value is 0. If you place
something opaque under it, the value should go to 1000.

Start with the IR probe all the way at the top of the mount, and run
“home z”. The bed should begin slowly moving up. Wave something under
the IR probe, and the bed should stop, it should now show you’re at
Z0. (If it doesn’t stop, immediately hit the power switch)

If both of your endstops and Z probe are working, hit the home buttons
(one at a time… and keep a hand near the power switch in case
something doesn’t work) to home the printer. **USE THE BUTTONS, NOT
G28. Hit home X, then home Y, then home Z, then home all.**

To level the bed, hit the “Auto Bed Compensation” button in the web
interface, or send “G32” which will run bed.g Your printer should
probe near each of the 3 leadscrews, and then you should see output
similar to this in the gcode console:

Leadscrew adjustments made: 0.143 -0.071 0.027, points used 3,
deviation before 0.082 after 0.000

Once your bed is level, do a “paper test”. Run “Home Z”. Once the
printer is homed, place a sheet of paper under the nozzle. Jog down
until the nozzle grips the paper. If you can’t jog down far enough,
you can run “M208 S1 Z-3” from the gcode console. Note, this will let
you jog an extra 3mm down, be careful not to jog too far and break
something. Once the nozzle is touching the paper, pull the paper out
of the way, and run the “probe point” macro. It will do a Z probe
again. If it stops between 1.9 and 2.1mm you’re good. If not, adjust
the IR Probe height, and repeat the paper test. Once it stops in that
range, open config.g and edit the Z value in the “G31” line near the
bottom with the Z height at which it stops.

For the following steps, you should home all 3 axis first. Make all of
the moves slowly so you don’t damage anything!

The max x/y/z are in the config.g provided are fairly conservative. To
properly set them, temporarily raise them with this command:

M208 X375 Y375 Z400

Start with Y. Manually move to X150, Y250 by jogging it using the
controls in the Web UI. Slowly increase Y, stopping before your Y axis
makes contact with the X carriage. Change the Y value in the M208
command in your config.g to match.

Repeat this with X, moving to Y150, X250, and stopping before your Y
carriage makes contact with the bearing block. Note your Max X value
and adjust it in the M208 command in config.g.

For Z, simply lower the bed to 220, then step it down slowly. Watch
that the screws on the bottom of the Z yoke don’t bottom out. Stop
before they make contact. Note your Z height, and set this in config.g
for your max Z.

### If your Z axis Binds

If you get binding in Z, you may need to make some adjustments. Repeat
the process as when you installed the Z axis originally, running Z
down to the bottom with the upper & lower brackets loose (loosen the
bolts holding the Z brackets to the frame, then run the bed all the
way down). Tighten the lower Z brackets back down while the bed is
near the bottom, then square the extrusions to the frame, and tighten
the top Z brackets. It’s critical the extrusions are squared to the
rest of the frame.

### \
\
Final Tuning

Tune your hotend PID using:

M303 H1 S240\
\
From the gcode console. Save the values into config.g, details here:\
[*https://duet3d.dozuki.com/Wiki/Gcode\#Section\_M303\_Run\_heater\_tuning*](https://duet3d.dozuki.com/Wiki/Gcode#Section_M303_Run_heater_tuning)

Tune your bed PID the same way using:

M303 H0 S60\
\
For saving the values into config.g one trick is to run M500 - this
writes them into config-override.g - you can copy the lines for H0 and
H1 out of there and paste them in place of the defaults in your
config.g. Alternatively, you can run M500, and then add an M501 at the
very end of your config.g which will load config-override.g and use
those values (you just have to remember that everything in
config-override.g will be run in addition to your config.g)

Calibrate your steps/mm of your extruder.

Accessories & Extras
--------------------

I use the filament holder here:
[*https://www.thingiverse.com/thing:21435*](https://www.thingiverse.com/thing:21435)

Filament can either sit next to the printer, feeding up through the
filament guide, or on a shelf above the printer.

If you bought the paneldue, you’ll want an enclosure.
[*https://www.thingiverse.com/thing:656884*](https://www.thingiverse.com/thing:656884)

If you have the 5” paneldue I modelled a back panel that can mount to
the front of the railcore, using some of the extra M3 nuts in the
front extrusions. It’s on thingiverse here:

[*https://www.thingiverse.com/thing:2612173*](https://www.thingiverse.com/thing:2612173)

You’ll need to use dc42’s 5” paneldue case here:
[*https://www.thingiverse.com/thing:656884*](https://www.thingiverse.com/thing:656884)

![](media/image76.png){width="6.5in" height="5.763888888888889in"}
