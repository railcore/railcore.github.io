# Adding More Thermistors

The Duet has three Thermistor inputs, of which two are used for the standard RailCore build.
1. The Bed Thermistor is assigned to P0, usually a thermistor embedded into the heated bed
1. The Hot-End Thermistor is assigned to P1 and used to regulate the hot-end extrusion temperature

The `M305` GCODE defines these in `config.g` as appropriate for your build, for example:
```
; Bed Thermistor (white-wire bead in the bed channel) is NTC 3950 100K [X0=Bed]
M305 P0 T100000 B3950 R4700 C0 H0 L0
; E3D V6 Thermistor cartridge is Semitec 104GT-2 [X1=E0 Extruder]
M305 P1 T100000 B4725 R4700 C7.06e-8 H0 L0
```
