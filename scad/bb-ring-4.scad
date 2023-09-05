// NAME: Ring 4
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray")
difference(){
    translate([0, 0, -unit*0.5])
        ring(4);
    for (a=[0:30:335])
        rotate([0, 0, a])
        translate([-unit*1.5, 0, 0])
            holes(1);
}