// NAME: Wheel 3 Shaft hole
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <lib/holes.scad>

module wheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h*(8-0.2)/unit);
            translate([0, 0, -0.1])
            cylinder(r=unit+0.1, h=unit-0.2, center=true, $fn=40);
        }

        shaft_hole(1);

        rotate([0, 90, 90])
            cylinder(d=2.8, h=size*unit+0.2, center=true);

        for (i = [0:3]){
            rotate([0, 0, i*90+45]){
                translate([unit, 0, 0])
                    holes(size/2.1);
            }
        }
    }
}


color("gray")
    wheel(3);
