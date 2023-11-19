// NAME: Terrain Wheel 7x3 Empty
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-wh-terrain-7x3.scad>

color("gray"){
    difference(){
        wh_terain_7x3();
        translate([0, 0, unit])
            cylinder(d=6*unit+0.1, h=2*unit, $fn=90);
    }
}