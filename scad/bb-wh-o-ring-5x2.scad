// NAME: O-Ring Wheel 5x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-35x2_5.scad>

color("gray")
difference(){
    large_wheel(5, 2);
    for(i=[0:4])
    translate([0,0,2.2+i*2.8+0.2])
        scale([1.1, 1.1, 1])
        o_ring_35();

    translate([0,0,2.1+4*2.8+0.2]){
        rotate([0, 90, 90])
            cylinder(d=2.1, h=unit*5, center=true);
        rotate([90, 0, 90])
            cylinder(d=2.1, h=unit*5, center=true);
    }
}
