// NAME: Beam Tile 2 Pinned 2x0.5
// LDRAW: 321
// CATEGORY: Tile Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>

color("DodgerBlue"){
    translate([0, 0, -unit*0.25])
        ecube([unit*2, unit, unit*0.5], true);

    for (i=[-1, 1])
        translate([unit*0.5*i, 0, 0])
        os_pin_1();
}
