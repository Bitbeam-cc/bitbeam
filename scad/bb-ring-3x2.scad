// NAME: Ring 3x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray")
difference(){
    translate([0, 0, -unit])
        ring(3, 2);
    for (a=[0:45:315])
        rotate([0, 0, a])
        translate([-unit*1, 0, 0])
            holes(1, h=2);
}
