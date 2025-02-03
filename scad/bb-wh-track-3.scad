// NAME: Track Wheel 3
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/track_wheel.scad>
use <lib/holes.scad>

translate([0, 0, unit*0.5])
    color("gray")
    difference(){
        union(){
            track_wheel(3);
            cylinder(d=10, h=unit, center=true);
        }
        shaft_hole(1);
    }
