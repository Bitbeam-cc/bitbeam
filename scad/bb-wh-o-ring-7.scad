// NAME: O-Ring Wheel 7
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-50x5.scad>

color("gray")
difference(){
    wheel(7);
    translate([0, 0, unit*0.5])
        scale([1.05, 1.05, 1])
        o_ring_50();
}
