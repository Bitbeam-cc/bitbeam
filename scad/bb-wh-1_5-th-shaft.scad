// NAME: Wheel 1.5 Thin with Shaft hole
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

module wheel(size, h=1){
    translate([0, 0, unit*0.25])
    difference(){
        ecylinder(d=unit*size, h=unit*0.5, center=true, $fn=40);
        shaft_hole(0.5);
    }
}


color("gray")
    wheel(1.5);
