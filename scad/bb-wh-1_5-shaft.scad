// NAME: Wheel 1.5 Shaft
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

module wheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        ecylinder(d=unit*size, h=unit, center=true, $fn=40);
        
        shaft_hole(1);
        
        rotate([0, 90, 90])
            cylinder(d=2.8, h=size*unit+0.2, center=true);
    }
}


color("gray")
    wheel(1.5);
