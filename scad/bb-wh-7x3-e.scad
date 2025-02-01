// NAME: Terrain Wheel 7x3 Empty
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray"){
    difference(){
        large_wheel(7, 3);
        translate([0, 0, unit])
            cylinder(d=6*unit+0.1, h=2*unit, $fn=90);
    }
}
