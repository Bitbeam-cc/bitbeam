# m-BITBEAM

This is source repository of m-BITBEAM parts. It is based on ``bitbeam-lib`` openscad library, which is append as sub-module under the ``scad`` directory.

Parts must be shifted to right position, to good positioning in LDRAW type software. 

## Parts naming

There is simple as could be naming key for files and parts naming. This could help you to understand what kind of file, resp. part is it.

```
bb-drv-mbkitronic
          ^------------- additional values of part
     ^------------------ type of part
 ^---------------------- main group or category of part
```
### group
There are some main groups, the base group is **bb**, which means bit beam, so this is printed bitbeam parts. With **ws** group, only they are in STL release file.
  * **bb** - bit beam
  * **co** - complete parts - typical bit beams with some other parts like sensors or special wheel supports.
  * **nut**, **ws**, **sc** - nuts, washers and screws
  * **sen** - that is sensors
  * **drv** - drivers, means electronics for drive motors, servos etc.

### type
Type of part, that could tell you, what kind of beam, sensor or driver it is.
  * **b** - brick
  * **L**, **H**, **T**, **O**, **D**, **X** - brick with the specific shape, which looks like L, H, T, O, D or X.
  * **sen**, **drv** - box for sensor or driver
  * **wh**, **pivot** - wheel and special stabilization ball.

### value
Value is short as possible which represent specific of part. That means number of each beams - size, type of sensor etc. Examples:
  * ``bb-b-20x1`` - bit beam brick 20x1
  * ``bb-L-3x4`` - bit beam brick L type 3 for one arm and 4 for second
  * ``bb-sen-rwc`` - bit beam box for rcw sensor
  * ``drv-mbkitronic`` - electronic part Motor Driver from Kitronic for BBC Micro:bit.
  * ``bb-drv-mbkitronic`` - bit beam box for motor driver
  * ``sc-M4x20`` - M4 screw 20mm length

## Releases

Avery tagged commit is released by travis, and two "binary" files are
created:

  * ``m-bitbeam-stl-X.Y.Z.zip`` which is printed STL files.
  * ``m-bitbeam-parts-X.Y.Z.zip`` which is parts library for LDRAW type
    software.
       
## Authors

This work is created or based or more authors. So all parts is tagged as
work of Collective Authors, they are in ``AUTHORS`` file.

## License

All files in this repository is public under the Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 license. See ``LICENSE.md`` file
for more details.
