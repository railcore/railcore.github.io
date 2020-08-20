The documentation for the Duet series of 3D printer controller electronics is now at [duet3d.com](https://duet3d.dozuki.com/). 
Wiring diagrams are at [Duet wiring](https://duet3d.dozuki.com/Wiki/Duet_Wiring_Diagrams) and [Duex wiring](https://duet3d.dozuki.com/Wiki/Duex_wiring_diagrams)

The master document for the gcodes supported by the Duet is the wiki page at [Duet3D Gcode](https://duet3d.dozuki.com/Wiki/Gcode). RRF3 also has extended [meta-commands in RRF3](https://duet3d.dozuki.com/Wiki/GCode_Meta_Commands) and [object model](https://duet3d.dozuki.com/Wiki/Object_Model_of_RepRapFirmware) and there is an [overview of the RRF changes](https://duet3d.dozuki.com/Wiki/RepRapFirmware_3_overview)

The Duet series of 3D printer controller boards are configured using the config.g file, homing files and some other gcode files in the /sys folder of the SD card. You can generate these files using the online configuration tool at [configurator.reprapfirmware.org](https://configtool.reprapfirmware.org/Start) also.

Duet electronics runs RepRapFirmware. For the Duet WiFi the official builds are maintained by dc42 and can be downloaded via [github.com](https://github.com/Duet3D/RepRapFirmware/releases).A summary change log and upgrade notes are also here, please read them carefully.

The web interface used by Duet electronics is Duet Web Control and is maintained by Christian Hammacher. The master GitHub repository is [github.com](https://github.com/Duet3D/DuetWebControl), however you will usually find a binary (for the Duet WiFi) or a ZIP file (for the wired Duets) alongside the firmware binaries in the dc42 and chrishamm firmware repositories.

When using some versions of Windows you need to install a device driver to connect via USB. You can find the driver at [github.com](https://github.com/Duet3D/RepRapFirmware/raw/dev/Driver/WindowsDriverFiles.zip).

If you wish to ask support questions relating to Duet electronics and RepRapFirmware, please use the forum at [forum.duet3d.com](https://forum.duet3d.com/).
