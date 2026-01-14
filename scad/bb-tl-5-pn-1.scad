// NAME: Beam Tile 5 Pinned 1
// LDRAW: 321
// CATEGORY: Tile Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>

color("DodgerBlue"){
    translate([0, 0, -unit*0.25])
        ecube([unit*5, unit, unit*0.5], true);

    for (i=[-1, 1])
        translate([unit*2*i, 0, unit*0.25])
        os_pin_1_5();
}
