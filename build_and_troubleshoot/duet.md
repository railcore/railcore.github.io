The documentation for the Duet series of 3D printer controller electronics is at [docs.duet3d.com](https://docs.duet3d.com/). 
Wiring diagrams are at [Duet wiring](https://docs.duet3d.com/Duet3D_hardware/Duet_2_family/Duet_2_WiFi_Ethernet_Hardware_Overview#wiring-diagram) and [Duex wiring](https://docs.duet3d.com/Duet3D_hardware/Duet_2_family/DueX2_and_DueX5#wiring-diagram)

The master document for the gcodes supported by the Duet is the wiki page at [Duet3D Gcode](https://docs.duet3d.com/User_manual/Reference/Gcodes). RRF3 also has extended [meta-commands in RRF3](https://docs.duet3d.com/User_manual/Reference/Gcode_meta_commands) and [object model](https://docs.duet3d.com/User_manual/RepRapFirmware/Object_Model) and there is an [overview of the RRF changes](https://docs.duet3d.com/User_manual/RepRapFirmware/Migration_RRF2_to_RRF3)

The Duet series of 3D printer controller boards are configured using the config.g file, homing files and some other gcode files in the /sys folder of the SD card. You can generate these files using the online configuration tool at [configurator.reprapfirmware.org](https://configtool.reprapfirmware.org/Start) also.

Duet electronics runs RepRapFirmware. For the Duet WiFi the official builds are maintained by dc42 and can be downloaded via [github.com](https://github.com/Duet3D/RepRapFirmware/releases).A summary change log and upgrade notes are also here, please read them carefully.

The web interface used by Duet electronics is Duet Web Control and is maintained by Christian Hammacher. The master GitHub repository is [github.com](https://github.com/Duet3D/DuetWebControl), however you will usually find a binary (for the Duet WiFi) or a ZIP file (for the wired Duets) alongside the firmware binaries in the dc42 and chrishamm firmware repositories.

When using some versions of Windows you need to install a device driver to connect via USB. Duet3D's [Getting connected guide](https://docs.duet3d.com/How_to_guides/Getting_connected/Getting_connected_to_your_Duet#install-drivers) explains when you need it and where to get it.

If you wish to ask support questions relating to Duet electronics and RepRapFirmware, please use the forum at [forum.duet3d.com](https://forum.duet3d.com/).
