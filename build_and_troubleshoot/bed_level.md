# Level and Map the print bed

The RailCore has two means of acheiving a first layer that is edge-to-edge flat, smooth as glass, and repeatable: Bed Tramming or Leveling, and the Mesh map correction.

## Bed Leveling (Tramming)

The print bed height on a Railcore 300ZL (or ZLT) is controlled by three independent Z motors, which gives precise control over the angle between the bed and the X/Y motion.
By sampling the height of the bed at multiple points to detect its plane, and making adjustments to each of the three motors, the bed can be brought into physical alignment with the print head and X/Y motion system.

Performing a Bed Leveling results in a physical adjustment of the bed's *tilt*, but no change to any values, settings, or software state.

### Procedure for Bed Leveling

#### G32 / bed.g

The RRF [`G32](https://duet3d.dozuki.com/Wiki/Gcode#Section_G32_Run_bed_g_macro) simply runs the `bed.g` macro.  There is nothing more to it.

The contents of `bed.g` determine the entire levelling process.  A typical default might look like this:
```
M561                         ; clear any existing bed transform
; 4 Point measurement and levelling.
G1 Z5 S2
G0 X15 Y0 F10000
G30 P0 X15 Y45 Z-99999
G0 X15 Y230
G30 P1 X15 Y275 Z-99999
G0 X275 Y230
G30 P2 X275 Y275 Z-99999
G0 X275 Y0
G30 P3 X275 Y45 Z-99999 S3
G1 X150 Y150               ; move the head to the center
```

Some might prefer a 3-point probe or other specific points, but the process is the same.  Each `G30` probes a specific point and remembers it as `Pxx`.
Then the last `G30` probes and calculates the offsets for the three Z motors (`S3`).  The firmware will report the probe measurements, deviation, and predicted correction after conclusion:
```6/10/2020, 8:50:05 PM	Leadscrew adjustments made: 0.001 -0.001 0.002, points used 4, deviation before 0.005 after 0.005```
After this, the leadscrews have been adjusted.

It is important to re-home the Z axis after G32, as the height may have changed.

If deviation was improved by the bed levelling, it is a good idea to perform it again to refine the adjustment.  Ideally, it converges on a value that does not change with repeat execution, usually after two or three exections.  If the values do not converge to your liking, it's possible that the X Rails are not correctly aligned, or the coordinates of the three Z "Yoke-to-bed" mounts is not correct.  This can result in bed levelling that improves, but needs multiple cycles.

#### Leadscrew definitions

The specific location of the leadscrews is important to arriving quickly at the best bed level adjustment.  The X and Y coordinates of the Z motors defines the point outside the bed where the bed pivots on the yoke.  For most RailCores, this is the location of the bed-to-yoke bolt.
The specific values for your printer should be defined in your `config.g` similar to this one:

```
; Leadscrew locations.  Must come after M667/M669
; 5/FrontLeft : 6/RearLeft : 7/Right
; Measured to the bed-yoke bolt for each leadscrew
; (7.5mm maximum correction)
M671 X-6.5:-6.5:348  Y21.7:275.6:150 S7.5  
```

## Mesh Map 

Even with the bed parallel to the print movement, the build surface itself may not be flat.  Mapping the high and low points of the print bed shows any irregularities or distortions in the flatness of the bed.  Software can use a map of these points as a topographic map, to raise/lower the head while printing to travel along the known shape of the surface.

## BL-Touch considerations

The BL-Touch probe uses a magnet on a pin to detect contact via hall-effect sensor.  This means that any external magnetic field can cause a higher or lower trigger point, and a distorted reading.

## First-layer Height

Once the bed is physically level, and any irregularity is mapped, the height of the nozzle at the first layer is determined by the probe offset, babystep adjustment, and Z Home probe.
