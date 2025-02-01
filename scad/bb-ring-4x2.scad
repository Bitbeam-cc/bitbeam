// NAME: Ring 4x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray")
difference(){
    translate([0, 0, -unit])
        ring(4, 2);
    for (a=[0:30:330])
        rotate([0, 0, a])
        translate([-unit*1.5, 0, 0])
            holes(1, h=2);
}
