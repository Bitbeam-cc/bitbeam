// NAME: O-Ring Wheel 5
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-35x2_5.scad>

color("gray")
difference(){
    wheel(5);
    for(i=[-1, 0, 1])
    translate([0,0,unit*0.5-i*2.5])
        scale([1.1, 1.1, 1])
        o_ring_35();
}
