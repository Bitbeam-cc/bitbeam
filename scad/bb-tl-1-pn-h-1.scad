// NAME: Beam Tile 1 Horizontal Pinned 1
// LDRAW: 321
// CATEGORY: Tile Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>


color("DodgerBlue"){
    translate([0, 0, -unit*0.25])
        ecube([unit, unit, unit*0.5], true);

    translate([unit*0.75, 0, unit*-0.25])
            rotate([90, 0, 90])
                os_pin_1_5();
}
