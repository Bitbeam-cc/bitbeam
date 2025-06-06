// NAME: Pin Join 5x0.5 Thin
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>

color("#404040"){
    translate([0, 0, -unit*0.25])
        ecube([unit*5, unit, unit*0.5], true);

    for (i=[-1, 1])
        translate([unit*2*i, 0, 0])
        os_pin_1();
}
