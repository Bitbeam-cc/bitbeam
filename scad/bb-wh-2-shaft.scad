// NAME: Wheel 2 Shaft
// CATEGORY: Wheel 2 Shaft
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <lib/holes.scad>

module wheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);
            cylinder(r=unit*0.75, h=unit, center=true, $fn=40);
        }

        shaft_hole(1);
        
        rotate([0, 90, 90])
            cylinder(d=2.8, h=size*unit+0.2, center=true);
    }
}


color("gray")
    wheel(2);
