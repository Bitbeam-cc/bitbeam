# BitBeam

This is the source repository of BitBeam parts. It is based on the `bitbeam-lib` OpenSCAD library, which is appended as a submodule under the ``scad`` directory.

Parts are aligned and rotated so that `.dat` files for LDraw software are generated correctly.

All parts are available in the BitBeam [catalog](https://catalog.bitbeam.cc).

## Parts Naming

The naming convention follows a simple key: `group-type-subtype-value`

This simple naming convention for files and parts helps in understanding the type of file or part.

```
bb-adp-mot-4_5x3_8-th
                   ^----- subtype if needed
           ^------------ size of part
       ^---------------- additional values of part
   ^-------------------- type of part
 ^---------------------- main group or category of part
```

### Group

There are some main groups. The base group is **bb**, which stands for **B**it**B**eam, indicating these are 3D-printed BitBeam parts.

- **bb** - BitBeam (standard parts with holes)
- **jt** - joint parts (parts with integrated ball holes)
- **gr** - gears (gears, racks, and transmission parts)
- **box** - technical boxes and frames
- **pin, shaft, joint, sc, nut, washer** - connectors and hardware
- **co** - complete parts (e.g., typical beams integrated with sensors or special wheel supports)


### Type

The type of part indicates the type of component, such as a beam, sensor, or driver.

- **b** - beam (standard straight part)
- **cr** - connecting rod (rods with holes at the ends)
- **tl** - tile (flat, half-height parts)
- **t, x, u, a** - specific shapes (T-shape, X-shape, etc.)
- **r** - rail
- **j** - joint link (dumbbell joint, used within `jt` parts or as standalone `joint-X` parts)
- **bd** - board (Arduino, OctopusLAB, etc.)
- **h**, **o**, **d** - beam frames with specific shapes
- **plate** - plate of defined size, thin or smooth
- **wh**, **pivot** - wheels and special stabilization balls
- **tr** - track chain piece
- **j** - joint-to-joint parts

### Subtype

Some parts have specific subtypes.

- **th** - thin (half height)
- **sm** - smooth (no holes on top)
- **pn** - pinned (integrated pins)
- **shaft** - with shaft or shaft hole
- **plus** - with plus shaft or plus shaft hole
- **ds** - double-sided, used on shafts
- **ss** - single-sided, used for joint parts when the joint is only on one side
- **s** - single (joint/pin on one side only)
- **v / h** - vertical/horizontal orientation (for pins on tiles)

### Value

The value is as short as possible and represents the specific attributes of the part, such as the number of beams, size, type of sensor, etc. Examples:

- `bb-b-20x1` - Beam 20x1
- `bb-a90-3x4` - L-beam type with arms of length 3 and 4 at a 90-degree angle.
- `bb-bd-oedu` - Beam for OctopusLab EDU Board
- `sc-M4x20` - M4 screw, 20 mm length
- `pin-2_5` - Pin with a size of 2.5 units, equivalent to 20 mm (one unit is 8 mm)
- `bb-cr-5` : Connecting rod of length 5
- `jt-b-3` : Beam of length 3 with joints on both ends
- `jt-b-3-s` : Beam of length 3 with a joint on one end only
- `bb-tl-pn-1x1` : 1x1 tile with an integrated vertical pin
- `bb-tl-pnh-1x1` : 1x1 tile with an integrated horizontal pin (from the thin side)
- `bb-gr-r-9` : Gear rack of length 9
- `box-10x7` : Electronic box frame with size 10x7

## Color Groups

Parts in the BitBeam library use specific colors to visually distinguish different types of components. The following color groups are used to categorize components:

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
- **Tan** (LDraw: 19) - Rails (for trains)
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

- `bitbeam-stl-YYYY.MM.zip` - which contains 3D-printed STL files
- `bitbeam-parts-YYYY.MM.zip` - which contains the parts library for LDraw
    software.

## Authors

This work is created by or based on the work of multiple authors. All parts are tagged as the work of Collective Authors, listed in the ``AUTHORS`` file.

## License

All files in this repository are publicly available under the Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 license. See ``LICENSE.md`` file
for more details.
