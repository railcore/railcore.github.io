# documentation
Documentation for the RailCore II 3d printer and its components

## About the RailCore II
RailcoreII is a Core-XY based Reprap 3d printer designed by J. Steve White & Tony Akens under the [[CC-Attribution Only license]]. The initial idea to collaborate on a printer started in the #RepRap IRC channel, and centered on some common goals we both had in mind for a new printer design.



### Project and Models

  * [https://www.thingiverse.com/thing:2407174](Main Project on Thingiverse)
  * [[https://www.thingiverse.com/thing:2765693|ZL Option on Thingiverse]]
  * [[https://www.thingiverse.com/dancheeseandham/collections/railcore-ii|Railcore II Thingiverse Collection]]

=== Aluminum Components  ===

  * [[http://www.mandalaroseworks.com/product/railcore|Mandala Rose Works - Railcore Parts]]
  * [[https://713maker.com/railcore|713 Maker - Railcore Parts]]

=== Configs and other Documentation ===

[[https://github.com/railcore|Github]]

=== Build videos ===

[[https://www.twitch.tv/kninedhp/videos/all|KnineDHP Twitch streams of the Railcore kit build]]
There is also RailCore branded merchandise [[http://kninedhp.merchminion.com/|here]]!

===== Official RailCore Versions=====

^                    ^ RailCore II (Deprecated)                                                                                      ^ RailCore IIZL                                                                                                 ^ RailCore II 300 (Deprecated)                                                                                  ^ RailCore II 300ZL                                                                                                                                                                                                           ^ RailCore II 300ZLT                                                                                            ^
| X/Y Printable      | 250x250                                                                                                       | 250x250                                                                                                       | 300x300                                                                                                       | 300x300                                                                                                                                                                                                                     | 300x300                                                                                                       |
| Z Printable        | 250                                                                                                           | 280                                                                                                           | 300                                                                                                           | 330                                                                                                                                                                                                                         | 600                                                                                                           |
| Auto Leveling?     | No                                                                                                            | Yes                                                                                                           | No                                                                                                            | Yes                                                                                                                                                                                                                         | Yes                                                                                                           |
| Fusion 360 Model   | [http://a360.co/2z30VXH](Model)                                                                                | [http://a360.co/2DoeHFu](Model)                                                                             | [[http://a360.co/2BZLzTA|Model]]                                                                              | [[http://a360.co/2D5OryV|Model]]                                                                                                                                                                                            | [[https://a360.co/2w7PjT6|Model]]                                                                             |
| Bill of Materials  | [https://docs.google.com/spreadsheets/d/1KvlSNYHE20HYjQlURdH50Pn_V7t8TfuNNLnhcvI4Nos/edit?usp=sharing](BOM)  | [https://docs.google.com/spreadsheets/d/1QZgV6a6Gk4xR9WxrK2C4QYaPQTXA8t7dFDyHO74-oSY/edit?usp=sharing](BOM)  | [[https://docs.google.com/spreadsheets/d/1ePSq-bL4-4rGUdbzkxtMmNftXPYwv5IH47edacloU4E/edit?usp=sharing|BOM]]  | [[https://docs.google.com/spreadsheets/d/1Eib0IkmRiP-zVM2p6gZ9PJ2bsDDvSKWbGtUybuFWfcs/edit?usp=sharing|BOM]]                                                                                                                | [[https://docs.google.com/spreadsheets/d/1L8mOABLsbfHb1PVPEnT-TpgfRpO25UduGNxD8GNMPSs/edit?usp=sharing|BOM]]  |
| Assembly Guide     | [https://docs.google.com/document/d/1wBlwMw_H73dxT0H4OD7fWI7y6bFSvh7_BoBPMTmdTZs/edit?usp=sharing](Guide)    | [https://docs.google.com/document/d/1OoXfw7aXMz0NzAxkdwuChC0FpunLRyKI02_1vJF52hk/edit?usp=sharing](Guide)   | [[https://docs.google.com/document/d/1hC_S6MeUwHMQ6U9vivJ6D1Olx1hfcOVcvL2W0NaXD28/edit?usp=sharing|Guide]]    | [[https://docs.google.com/document/d/19FuTYfwqgOkGO8SUScnSuhS_Gx8mJMmXLiPgBfGeJ-s/edit?usp=sharing|Guide]] [[https://docs.google.com/document/d/1aIc6x7Vzb-bH8-pILNBV1cXyp3JWsIa50Y6eSjMmCgM/edit?usp=sharing|Kit wiring]]  | Coming Soon!                                                                                                  |

===== Hardware Components =====
{{ ::railcore2.jpg?direct&250|Railcore 2}}
  * [[Things to Consider Before Ordering Parts]]
  * Mechanics
    * [[Linear Rails]]
    * [[Idlers]]
    * [[Leadscrews]]
    * [[Leadscrew Couplers]]
    * [[Belts]]
    * [[Extruders]]
  * Electronics
    * [[Power Supplies]]
    * [[Controller]]
    * [[Stepper Motors]]
    * [[Stepper Drivers]]
    * [[Bed Heaters]]
    * [[SSR's]]
    * [[Z-Probes]]
    * [[Endstop Switches]]
    * [[Fans]]
  * Other
    * [[Bed Surfaces]]
    * [[Hotends]]
    * [[Side Panels]]
    * [[Frame Extrusions]]
    * [[Mag Bed Flex Plates]]

===== Firmware and Configuration =====
 Example configurations for several firmwares using different controllers with the standard railcore configurations

  * Duet WiFi
    * RepRapFirmware
      * [[Duet RepRap 250Z|250Z]]
      * [[https://github.com/railcore/configs/tree/master/Duet/250ZL|Duet RepRap 250ZL]]
      * [[Duet RepRap 300Z|300Z]]
      * [[Duet RepRap 300ZL|300ZL]] or try the [[300ZLconfigcreator|Duet RepRap 300ZL Configuration Creator (experimental)]] 
  * RAMPS
    * klipper
      * [[Ramps 250Z|250Z]]
    * Repetier Firmware
    * Marlin Firmware
  * RADDS
    * klipper
      * [[Ramps 250Z|250Z]]
    * Repetier Firmware
  * Slicers
    * [[Simplify3D 250Z]]
===== Commissioning =====

  * Commissioning introduction
  * [[Update your firmware]]
  * [[Commissioning – Duet]]
  * [[Commissioning - Railcore]]

===== Sample Builds =====

- JohnOCFII Imgur Gallery https://imgur.com/a/edVEg4K
===== Variations & Customizations =====

==== Configuration Options ====
  * [[Duet Switchless X/Y Homing]]
  * [[Tool Offset Z configuration]]

==== Improving durability ====
There are some milled aluminium replacement parts available 

these include:
  * X/Y Motor Mounts
    * [[https://713maker.com/railcore/railcore-ii-zl-series-motor-mounts|ZL version]]
    * [[https://713maker.com/railcore/railcore-ii-non-zl-series-motor-mounts|non ZL version]]
  * [[https://713maker.com/railcore/railcore-ii-idler-pulley-mounts|Pulley Mounts]]
  * [[http://www.mandalaroseworks.com/product/railcore|X Carriage Mounts]]
  * [[http://www.mandalaroseworks.com/product/railcore#lbrackets|Aluminium L Brackets]]

==== How To's ====
A list of how-to's on various aspects of the Railcore build:
  * [[Aligning the X Carriages/Y Rail]]

==== Community Modifications ====

A list of contributed modifications by builders:
  * [[Addons]]
  * [[Modifications]]

There are some [[tips]] here too.
