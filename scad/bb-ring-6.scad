// NAME: Ring 6
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray")
difference(){
    translate([0, 0, -unit*0.5])
        ring(6);
    for (a=[0:22.5:337.5])
        rotate([0, 0, a])
        translate([-unit*2.5, 0, 0])
            holes(1);
}
