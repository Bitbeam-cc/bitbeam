// NAME: O-Ring Wheel 5x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-35x2_5.scad>

color("gray")
difference(){
    large_wheel(5, 2);
    for(i=[0:5])
    translate([0,0,2.2+i*2.8])
        scale([1.1, 1.1, 1])
        o_ring_35();
}
