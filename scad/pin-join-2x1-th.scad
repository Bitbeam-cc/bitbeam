// NAME: Pin Join 2x1 Thin
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>


color("#404040"){
    translate([0, 0, -unit*0.25])
        ecube([unit*2, unit, unit*0.5], true);

    for (i=[-1, 1])
        translate([unit*0.5*i, 0, unit*0.25])
        os_pin_1_5();
}
