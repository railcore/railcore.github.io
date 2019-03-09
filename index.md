---
title: RailCore II 3D Printer
---

## Official RailCore II Documentation

### Assembly Guide, BOM, Model and Printable Parts 

The Fusion360 models, Assembly Guide and BOM are the official, master copies maintained by Tony Akens.

 * [RailCore II 300ZL/ZLT Assembly Guide](https://railcore.page.link/guide)
 * [RailCore II 300ZL/ZLT Thingiverse (all printable parts)](https://www.thingiverse.com/thing:2407174)
 * **Bill Of Materials**
   * [RailCore II 300ZL Bill Of Materials](https://railcore.page.link/zlbom)
   * [RailCore II 300ZLT Bill Of Materials](https://railcore.page.link/zltbom)
 * **Fusion 360 Models**
   * [RailCore II 300ZL Fusion360 Model](https://railcore.page.link/zlmodel)
   * [RailCore II 300ZLT Fusion360 Model](https://railcore.page.link/zltmodel)
 * [FAQ](/faq.md)
 * [Be a patron or donate to the project](https://www.kraegar.com/railcoreii) - *Donations and subscriptions go towards the development of new improvements for the RailCore II.*

## The RailCore II Community 

### Community Maintained Documentation & Guides
   
   * [RailCore II Github](https://github.com/railcore) - *(All of the Github section is under active development - March 2019)*
     * [RailCore II Wiki (new) at railcore.github.io](/wiki/index.md)
     * [RailCore II configs for Duet and other boards](https://github.com/railcore/configs)
       * [Community Duet config](https://github.com/railcore/configs/tree/master/duet)
       * [Project R3D config](https://github.com/railcore/configs/tree/master/Duet_archive/ProjectR3D/300ZL)
     * [RailCore II Slicer Configs](https://github.com/railcore/slicers)
     * [RailCore II STL/DXF files at Github](https://github.com/railcore/railcore.github.io/tree/master/BOM)
   * [Railcore II Wiki (deprecated) at railcore.org](https://railcore.org/doku.php)
   * [Project R3D Kit wiring guide](https://docs.google.com/document/d/1aIc6x7Vzb-bH8-pILNBV1cXyp3JWsIa50Y6eSjMmCgM/edit?usp=sharing)
   * [RailCore Thingiverse Collection](https://www.thingiverse.com/railcore/collections/300zl-zlt)

### Discussion & Chat

 * [RailCore Printers Owners and Builders group on Facebook](https://www.facebook.com/groups/RailCore/)
 * [Railcore Forum at railcore.org](https://forum.railcore.org/)
 * [Discord Channel](https://discord.gg/Sy569Hq)
 * [#RailCore IRC Channel on freenode](https://tinyurl.com/yxl725zs)
  
### RailCore II kits and products

* [RailCore II Kits](https://www.projectr3d.com/) from Project R3D.
* [Aluminium parts](http://www.mandalaroseworks.com/product/railcore) by Mandala Rose Works
* [Aluminium parts](https://713maker.com/railcore) by 713 Maker
* [Railcore Branded Merchandise](http://kninedhp.merchminion.com/) by Merch Minion

## About the RailCore II
RailCore II is a Core-XY based Reprap 3D printer designed by J. Steve White & Tony Akens under the CC-Attribution Only license. The initial idea to collaborate on a printer started in the #RepRap IRC channel, and centered on some common goals we both had in mind for a new printer design.

These were:-
 * Core-XY motion.
 * All Linear rails for movement
 * Space & cost Efficient, enclosable frame
 * Key components being printable, or able to be milled
 * Flexibility and scalability in the design
 * A professional looking printer
 * Self sourced and easily customizable.

J. Steve White had previously built the Railcore - the alpha version of this printer.  Lessons were learned and the design on the new printer began.  All design work was done in Fusion360.
As it progressed, we decided to publish this printer in an open, documented format for others to build as well.

The frame is designed to be 1515 aluminum extrusion.  This was a space efficient choice, which makes building the printer easier, as standard M3 hardware works like a T-Nut fitting into the extrusion nicely.  To add rigidity, we use HDPE sides to stiffen the frame.  (These can be cut out of any material you prefer, including melamine, plywood, acrylic & aluminum).  The total cost for the actual frame components (extrusion, corner cubes, and sides) is roughly $100.

Some notable aspects of the design: 3 trapezoidal lead screws Z-axis, stacked idlers and duo-planar belt path.
The electronics in the design are the Duet (Wifi or Ethernet), Duex2/5,  24v PSU and 0.9 degree steppers.  We used an E3D v6 for the design, as it's the most common hotend at this time.  Support for other hotends such as Bondtech and Mosquito and many others are also available.
Semi-Direct drive or full bowden is supported.
[A more detailed version of the story of the RailCore II can be found here](/the_railcore_story.md)

*A special thanks to [Filastruder](https://www.filastruder.com/), [Duet3d](https://www.duet3d.com/), [E3D](https://e3d-online.com/), [SeeMeCNC](https://www.seemecnc.com/), [Mandala Rose Works](http://www.mandalaroseworks.com/product/railcore), [713 Maker](https://713maker.com/railcore) and [Project R3D](https://www.projectr3d.com/) for supporting the project.*

## Table of all RailCore II Versions

|                   | RailCore II (Deprecated) | RailCore II ZL | RailCore II 300 (Deprecated) | RailCore II 300ZL | RailCore II 300ZLT |
|-------------------|--------------------------|---------------|------------------------------|-------------------|--------------------|
| X/Y Printable     | 250×250                  | 250×250       | 300×300                      | 300×300           | 300×300            |
| Z Printable       | 250                      | 280           | 300                          | 330               | 600                |
| Auto Leveling?    | No                       | Yes           | No                           | Yes               | Yes                |
| Fusion 360 Model  | [Model](http://a360.co/2z30VXH)                    | [Model](http://a360.co/2DoeHFu)         | [Model](http://a360.co/2BZLzTA)                        | [Model](http://a360.co/2D5OryV)             | [Model](https://a360.co/2w7PjT6)              |
| Bill of Materials | [BOM](https://docs.google.com/spreadsheets/d/1KvlSNYHE20HYjQlURdH50Pn_V7t8TfuNNLnhcvI4Nos/edit?usp=sharing)                      | [BOM](https://docs.google.com/spreadsheets/d/1QZgV6a6Gk4xR9WxrK2C4QYaPQTXA8t7dFDyHO74-oSY/edit?usp=sharing)           | [BOM](https://docs.google.com/spreadsheets/d/1ePSq-bL4-4rGUdbzkxtMmNftXPYwv5IH47edacloU4E/edit?usp=sharing)                          | [BOM](https://docs.google.com/spreadsheets/d/1Eib0IkmRiP-zVM2p6gZ9PJ2bsDDvSKWbGtUybuFWfcs/edit?usp=sharing)               | [BOM](https://docs.google.com/spreadsheets/d/1L8mOABLsbfHb1PVPEnT-TpgfRpO25UduGNxD8GNMPSs/edit?usp=sharing)                |
| Assembly Guide    | [Guide](https://docs.google.com/document/d/1wBlwMw_H73dxT0H4OD7fWI7y6bFSvh7_BoBPMTmdTZs/edit?usp=sharing)                    | [Guide](https://docs.google.com/document/d/1OoXfw7aXMz0NzAxkdwuChC0FpunLRyKI02_1vJF52hk/edit?usp=sharing)         | [Guide](https://docs.google.com/document/d/1hC_S6MeUwHMQ6U9vivJ6D1Olx1hfcOVcvL2W0NaXD28/edit?usp=sharing)                        | [Guide](https://docs.google.com/document/d/19FuTYfwqgOkGO8SUScnSuhS_Gx8mJMmXLiPgBfGeJ-s/edit?usp=sharing) [Kit wiring](https://docs.google.com/document/d/1aIc6x7Vzb-bH8-pILNBV1cXyp3JWsIa50Y6eSjMmCgM/edit?usp=sharing)  |   [Guide](https://docs.google.com/document/d/19FuTYfwqgOkGO8SUScnSuhS_Gx8mJMmXLiPgBfGeJ-s/edit?usp=sharing) [Kit wiring](https://docs.google.com/document/d/1aIc6x7Vzb-bH8-pILNBV1cXyp3JWsIa50Y6eSjMmCgM/edit?usp=sharing) 
