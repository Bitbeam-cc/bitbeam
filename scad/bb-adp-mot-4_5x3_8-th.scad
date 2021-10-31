// NAME: Thin Adapter for Gearbox Motor 5.5x3.8 Shaft
// CATEGORY: Adapter Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

color("LightSlateGray")
translate([0,0,unit/2])
    difference(){
        union(){
            cylinder(d=unit*1.5, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, -unit/4])
                cube_arm(3, h=0.5);
        }


        translate([0, 0, 0])
            rotate([0, 0, 90])
            shaft_hole(1);

        rotate([0, 90, 0])
            cylinder(d=2.8, h=16.1, center=true);


        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=unit, h=unit*0.51);
        }
    }
