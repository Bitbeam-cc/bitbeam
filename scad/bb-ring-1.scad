// NAME: Ring 1
// CATEGORY: Wheel
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>


color("LightSlateGray")
translate([0,0,(unit-0.2)/2])
    difference(){
        ecylinder(d=unit, h=unit-0.2, center=true);
        holes(1, h=(unit-0.2)/unit);
    }
