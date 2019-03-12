---
title: Update your firmware
---

Your Duet will have been supplied with firmware flashed in its microcontroller. Now you have established communication with the Duet, it’s a good idea check you have the latest version, and to update the firmware on the Duet if not. Dave Crocker regularly adds features and fix bugs, to improve the usability of your printer, so check every month or so.

Updates have improved network connectivity, improved USB communication, improved accuracy of thermistors, improved the SD card reading, fixed homing problems, fixed printer stopping problems, and many others. So please, to save yourself potential frustration, update your firmware. All the following instructions assume you have up-to-date firmware.

To check your firmware version, connect to your Duet board via the Arduino IDE Serial Monitor, or use the Web Interface and send the ‘M115’ gcode. The response should be something like:

```
%%FIRMWARE_NAME:RepRapFirmware FIRMWARE_VERSION:1.09 ELECTRONICS:Duet (+ Extension) DATE:2015-04-21%%
```

Compare the firmware version information from your response to M115, with the file name of the file in this link, which is on the github page. But DO NOT DOWNLOAD THIS FILE DIRECTLY! See here for the full firmware update instructions.

Whenever you update the firmware, ALWAYS update the SD Card with the SD-Image from from the same firmware, as well as the Duet WifiServer firmware. Always keep the SD card files and WifiServer concurrent with the firmware version, or you may get strange behaviour from the printer.

In depth instructions can be found within the Duet3D wiki [Installing and Updating Firmware](https://duet3d.dozuki.com/Wiki/Installing_and_Updating_Firmware)
