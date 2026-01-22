// NAME: Beam 1 Thin Pinned 1
// LDRAW: 321

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>

color("DodgerBlue")
translate([0, 0, unit*0.25])
    difference(){
        union(){
            ecube([unit, unit, unit*0.5], true);

            translate([unit*0.75, 0, 0])
            rotate([90, 0, 90])
                os_pin_1_5();
        }
        holes(1, h=0.5);
    }
