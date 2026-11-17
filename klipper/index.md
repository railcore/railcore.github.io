---
title: Klipper
rank: 3.5
---

# Klipper on a RailCore

The RailCore kits ship with Duet boards running RepRapFirmware (RRF), and the official configs are
for RRF. Plenty of RailCore owners now run [Klipper](https://www.klipper3d.org/) instead. This
section covers what changes, which boards work, and how to set a RailCore up.

* **[RailCore Klipper config guide](railcore_config.md)**: kinematics, three-motor `z_tilt`,
  probe, mesh, homing, input shaping and macros, step by step.
* **[Sample configs](https://github.com/railcore/configs/tree/master/klipper)** in the
  railcore/configs repo: RailCore II 300ZL/ZLT on the kit Duet 2 + Duex 5, and the RailCore Mini
  on the kit Duet 3 Mini 5+. Starting points: every value marked `CHECK:` must be verified on your
  machine.

## Should you switch?

RRF on a Duet is a complete, well-supported setup. Nothing about the RailCore requires Klipper.
Switch if you want one of these:

* **Input shaping with a measured result.** Klipper measures your printer's resonances with an
  accelerometer and suggests the shaper for you. (RRF 3.4 and later has input shaping too; Klipper's
  is the more widely used and documented.)
* **The Klipper ecosystem**: Mainsail or Fluidd, Moonraker, KlipperScreen, adaptive bed meshing,
  `exclude_object`, and a large pool of community macros.
* **A cheaper or newer board.** Klipper runs on most 32-bit boards, so a RailCore with a failed
  or missing Duet does not need another Duet.
* **Config as text with macros.** Klipper's macros (Jinja2 templates) are easy to share and copy
  between printers.

Stay on RRF if your printer prints well and you don't want a second computer in the loop, or if
you rely on Duet Web Control, a PanelDue, or RRF features such as its standalone (no host)
operation.

## What changes compared to RRF

| | RepRapFirmware (Duet) | Klipper |
|-|-|-|
| Where motion is planned | on the Duet | on a host computer (usually a Raspberry Pi); the board only steps motors and reads sensors |
| Config | `config.g` plus `homex.g`, `bed.g` and other macro files on the SD card | one `printer.cfg` (plus `[include]` files) on the host |
| Changing config | edit, then `M98 P"config.g"` or reboot | edit, then `FIRMWARE_RESTART` |
| Web interface | Duet Web Control | Mainsail or Fluidd (through Moonraker) |
| Display | PanelDue | KlipperScreen on an HDMI/DSI touchscreen; the PanelDue is not a standard Klipper display |
| Three-motor bed leveling | `M671` leadscrew positions + `G32` running `bed.g` | `[z_tilt]` section + `Z_TILT_ADJUST` |
| Mesh | `M557` + `G29` | `[bed_mesh]` + `BED_MESH_CALIBRATE` (optionally adaptive) |
| Steps | steps/mm (`M92`) | `rotation_distance` (mm per motor turn) |
| Motor current | `M906` in mA | `run_current` in amps RMS |
| Probe offset | `G31 X Y Z` | `x_offset`, `y_offset`, `z_offset` in `[bltouch]` or `[probe]` |
| Homing | `homeall.g`, `homex.g` ... | `[stepper_*]` endstop settings + `[safe_z_home]` or `[homing_override]` |

Klipper names the two CoreXY motors `stepper_x` and `stepper_y`, but they are the A and B belt
motors, not the axes. On the RailCore II kit the rear motor (Duet X port) is `stepper_x` and the
front motor (Duet Y port) is `stepper_y`.

## Boards

### Duet 2 WiFi / Ethernet + Duex 5 (RailCore II kit)

Klipper supports the Duet 2 (SAM4E8E processor); start from Klipper's
[generic-duet2-duex.cfg](https://github.com/Klipper3d/klipper/blob/master/config/generic-duet2-duex.cfg),
or from our [300ZL sample](https://github.com/railcore/configs/tree/master/klipper/300ZL-Duet2-Duex5),
which already has the RailCore wiring. Know the limits first:

* **Klipper talks to the Duet over USB.** The WiFi or Ethernet module is not used, and there is
  no SPI link: the Duet 3 "SBC" SPI connection is an RRF feature and the Duet 2 does not have it.
  Mount the host computer in the electronics bay and run a short, good USB cable.
* **USB back-powers the Duet.** The Duet's logic runs from USB, so it stays on when the PSU is off.
  If Klipper starts while the motor power is off it can stop with a driver error; switch the
  printer on, then send `FIRMWARE_RESTART`.
* **TMC2660 drivers:** Klipper drives them over SPI, but has no sensorless homing for them. Keep
  the endstop switches.
* **Duex 5 endstop inputs cannot be used as endstops in Klipper** (they go through an I/O
  expander). The kit only uses the Duet's X and Y endstops and the Z probe input, so this does not
  matter for a stock build.
* **Flashing** wipes RRF. Back up your config first ([Backup](../software/backup.md)). Klipper is
  flashed with `bossac` after erasing the board (Klipper's
  [Bootloaders guide](https://www.klipper3d.org/Bootloaders.html), "SAM4 micro-controllers"). To go
  back to RRF, erase and flash the RRF firmware the same way.

### Duet 3 Mini 5+ (RailCore Mini kit)

Klipper supports the Duet 3 Mini 5+ (SAME54 processor) and its Expansion Mini 2+ drivers; start
from Klipper's
[generic-duet3-mini.cfg](https://github.com/Klipper3d/klipper/blob/master/config/generic-duet3-mini.cfg)
or our [Mini sample](https://github.com/railcore/configs/tree/master/klipper/Mini-Duet3-Mini5plus).
The same USB-only and back-up-first notes apply. The Mini sample has had less real-world testing
than the 300ZL one.

### Replacement boards

Any board Klipper supports will run a RailCore. You need at least **six stepper drivers** (X, Y,
three Z, extruder) and an input for the probe. Common choices:

* BigTreeTech Octopus or Octopus Pro, Manta M8P (8 drivers)
* BigTreeTech SKR 3 or SKR 2 (5 drivers: add a driver or a second board for the sixth motor)
* Fysetc Spider (8 drivers)
* A Duet 3 6HC (6 drivers)

Use the matching `generic-*.cfg` from
[Klipper's config folder](https://github.com/Klipper3d/klipper/tree/master/config) for the pins, and
take the machine values (rotation distances, leadscrew positions, probe offsets) from our
[sample configs](https://github.com/railcore/configs/tree/master/klipper).

## What you need

1. A host computer: a Raspberry Pi 3B+, 4 or 5 is typical; anything that runs Linux works.
2. Klipper, Moonraker and Mainsail or Fluidd on it. [KIAUH](https://github.com/dw-0/kiauh)
   installs all of them.
3. Optional but recommended: an ADXL345 accelerometer for input shaping.

Then follow the [RailCore Klipper config guide](railcore_config.md).

## Links

* [Klipper documentation](https://www.klipper3d.org/): [Installation](https://www.klipper3d.org/Installation.html),
  [Config Reference](https://www.klipper3d.org/Config_Reference.html),
  [Config checks](https://www.klipper3d.org/Config_checks.html)
* [Mainsail](https://docs.mainsail.xyz/) and [Fluidd](https://docs.fluidd.xyz/) documentation
* [Older community Klipper configs](https://github.com/railcore/configs/tree/master/archive/Klipper)
  in railcore/configs
* Ask in the #help channel on the [RailCore Discord](https://discord.gg/Sy569Hq): several members
  run Klipper RailCores.
