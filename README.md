# BitBeam

This is the source repository of BitBeam parts. It is based on the `bitbeam-lib` OpenSCAD library, which is append as sub-module under the ``scad`` directory.

Parts are aligned and rotated so that `.dat` files for LDraw software are generated correctly.

All parts are available in the BitBeam [catalog](https://catalog.bitbeam.cc).

## Parts Naming

There is a simple naming key for files and parts. This can be helpful to understand what kind of file or part it is.

```
bb-gr-int-32-th
                   ^---- subtype if needed
           ^------------ size of part
       ^---------------- additional values of part
   ^-------------------- type of part
 ^---------------------- main group or category of part
```

### Group

There are some main groups. The base group is **bb**, which means **b**it**b**eam, so this is printed BitBeam parts.

- **bb** - bit beam
- **gr** - gear
- **co** - complete part (typical beams with some other parts like sensors or special wheel supports)
- **nut**, **washer**, **sc** - nut, washer, or screw
- **sen** - sensor
- **pin** - plastic pin
- **shaft**, **t-shaft** - shaft
- **jt** - jointed beam
- **joint** - joint

### Type

The type of part can tell you what kind of beam, sensor, or driver it is.

- **a** - L shape with a defined angle
- **b** - beam
- **bd** - board (Arduino, OctopusLAB, etc.)
- **h**, **o**, **d** - beam frame with a specific shape
- **t**, **x**, **u** - beam with a specific shape, resembling T, X(+), and U
- **plate** - plate of defined size, thin or smooth
- **tl** - tile
- **wh**, **pivot** - wheel and special stabilization ball
- **tr** - piece of track chain
- **cr** - connecting rod
- **j** - joint-to-joint part

### Subtype

Some parts have defined sub-types.

- **sm** - Smooth, meaning a version without too many holes
- **th** - Thin size, meaning the height of the beam is one half of a unit
- **shaft** - With shaft or shaft hole
- **plus** - With plus shaft or plus shaft hole
- **pn** - pinned, used with tiles which have pins on itself
- **ds** - Double side, used on shafts
- **ss** - Single side, used for jointed parts, when joint is only on one side

### Value

The value is as short as possible and represents the specifics of the part, such a means number of each beams - size, type of sensor etc. Examples:

- `bb-b-20x1` - Beam 20x1
- `bb-a90-3x4` - Beam L type 3 for one arm and 4 for the second with a 90-degrees angle.
- `bb-bd-oedu` - Beam for OctopusLab EDU Board
- `sc-M4x20` - M4 screw, 20 mm length
- `pin-2_5` - Pin of size 2.5 units, which means 20 mm (one unit is 8 mm)

## Color Groups

Parts in the BitBeam library use specific colors to visually distinguish different types of components. The following color groups are used:

### BitBeam Parts (bb-)

- **RoyalBlue** (LDraw: 1) - Standard beams
- **DodgerBlue** (LDraw: 321) - Pinned beams
- **SkyBlue** (LDraw: 322) - Linear gear beams and planetary gears
- **Green** (LDraw: 2) - Plates, circles, and ramps
- **YellowGreen** (LDraw: 27) - Electronics parts (battery boxes, sensors, tubes, and switches)
- **Gray** (LDraw: 8) - Wheels, rings, and motors
- **LightSlateGray** (LDraw: 379) - Adapters (motor adapters, shaft adapters, rings)
- **DarkOrange** (LDraw: 508) - Special parts (bearings, hinges, traffic lights, differential, pencil, quadrilaterals)
- **Red** (LDraw: 4) - Motor frames and servo parts
- **Tan** (LDraw: 19) - Curved parts and ramps with specific angles
- **#404040** (LDraw: 0) - Track chains (very dark gray, used instead of black for better part visibility)

### Gears (gr-)

- **SkyBlue** (LDraw: 322) - Standard gears (teeth count divisible by 8)
- **DarkOrange** (LDraw: 322) - Special gears (teeth count not divisible by 8)

### Shafts and Pins

- **SlateGray** (LDraw: 379) - Standard shafts and T-shafts
- **#404040** (LDraw: 0) - Most pins and some T-shaft pins (very dark gray, used instead of black for better part visibility)
- **Teal** (LDraw: 378) - Specific pin sizes (1.25, 2.25) and joints

### Hardware

- **Silver** (LDraw: 80) - Screws, nuts, and washers
- **White** - Special parts (ping-pong ball)

*Note: Other hardware parts and complete parts (co-) may retain their original colors when possible to match real-world appearance.*

## Releases

Every tagged commit is released, and two archive files are created:

- `bitbeam-stl-YYYY.MM.zip` - which contains printed STL files
- `bitbeam-parts-YYYY.MM.zip` - which is contains parts library for LDraw
    software.

## Authors

This work is created by or based on the work of multiple authors. All parts are tagged as work of Collective Authors, they are in ``AUTHORS`` file.

## License

All files in this repository are public under the Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 license. See ``LICENSE.md`` file
for more details.
