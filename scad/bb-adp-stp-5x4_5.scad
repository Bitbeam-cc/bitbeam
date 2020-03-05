// NAME: Adapter for Stepper Motor 5x4.5 Shaft
// CATEGORY: Adapter Motor

include <bitbeam-lib/bitbeam-lib.scad>

translate([0,0,6])
    difference(){
        union(){
            cylinder(d=16, h=12, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, -2])
                cube_arm(3, side_holes=false);
        }

        // shaft
        difference(){
            cylinder(d=5.1, h=12.1, center=true);
            translate([2.5+2.1, 0, -2])
                cube([5, 5, 12.2], center=true);
        }

        // nuts
        for (y=[-1, 1]){
            translate([y*4, 0, 0])
                hull(){
                    for (z=[1.5, 6]){
                        translate([0, 0, z])
                            rotate([0, 90, 0])
                            cylinder(d=6.2, $fn=6, h=2.6, center=true);
                    }
                }
        }
        translate([0, 0, 1.5])
            rotate([0, 90, 0])
            cylinder(d=3, h=16.1, center=true);


        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=12.1, center=true);
        }
        for (y=[-1, 1]){
            translate([0, unit*y, 2])
                cylinder(d=unit, h=12.1);
        }
    }
