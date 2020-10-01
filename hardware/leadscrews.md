---
title: Leadscrews
---
TR8*4 Acme Leadscrews are the standard for Railcore. Combined with a 0.9 stepper these give you 0.01mm full steps.  The difficulty lies in getting good, straight leadscrews as some sources for them are pretty hit and miss on quality. LDO leadscrews are known good quality, please see the BOM.

TR8*2 leadscrews can be substituted, and are available from www.zyltech.com - they also offer delrin anti-backlash nuts.  (Note, the yokes use a 16mm spacing, be sure to get the correct leadscrew nuts)  These leadscrews have so far been of higher tolerances and straighter than most sources of TR8*4.  If using TR8*2 leadscrews with 0.9 steppers you get a 0.005 full step.  You'll need to change your steps/mm for your Z axis, and it may possibly limit your Z travel speeds.  Use the table below to validate your stepper / leadscrew config, and your settings for steps/mm in config.g

|           | Full Steps (minimum Z layer height increment) |                |
|-----------|-----------------------------------------------|----------------|
|           | **0.9 Degree**                                | **1.8 Degree** |
| **TR8*8** | 0.02mm                                        | 0.04mm         |
| **TR8*4** | 0.01mm                                        | 0.02mm         |
| **TR8*2** | 0.005mm                                       | 0.01mm         |


| Steps/mm for 16x (Set in M92 in config.g) |  |            |
|-------------------------------------------|-----------------------------------------------|------------|
|                                           | 0.9 Degree                                    | 1.8 Degree |
| TR8*2                                     | 3200                                          | 1600       |
| TR8*4                                     | 1600                                          | 800        |
| TR8*8                                     | 800                                           | 400        |
