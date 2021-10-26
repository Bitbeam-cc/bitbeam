// NAME: O-Ring Wheel 7x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-50x5.scad>

color("gray")
difference(){
    large_wheel(7, 2);
    for (z=[0:1])
    translate([0, 0, unit*0.5+unit*z])
        scale([1.05, 1.05, 1])
        o_ring_50();
}
