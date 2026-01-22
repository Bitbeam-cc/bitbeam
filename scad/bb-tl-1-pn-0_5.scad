// NAME: Beam Tile 1 Pinned 0.5
// LDRAW: 321
// CATEGORY: Tile Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>


color("DodgerBlue"){
    translate([0, 0, -unit*0.25])
        ecube([unit, unit, unit*0.5], true);

    os_pin_1();
}
