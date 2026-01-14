// NAME: Beam 1 Thin 4xPinned 1
// LDRAW: 321

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>

color("DodgerBlue")
translate([0, 0, unit*0.25])
    difference(){
        union(){
            ecube([unit, unit, unit*0.5], true);

            rotate([90, 0, 90])
                pin(3);
            rotate([90, 0, 180])
                pin(3);
        }
        holes(1, h=0.5);
    }
