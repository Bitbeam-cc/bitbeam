// NAME: Rail Wheel 3 Plus Shaft hole
// CATEGORY: Train Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>
use <lib/rail.scad>

module rwheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                wheel_profile(size, h);
            cylinder(r=unit+0.1, h=unit, center=true, $fn=40);
        }

        plus_hole(1);

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
    rwheel(3);
