// NAME: Track Wheel 10
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/track_wheel.scad>

translate([0, 0, unit*0.5])
    color("gray")
    track_wheel(10);
