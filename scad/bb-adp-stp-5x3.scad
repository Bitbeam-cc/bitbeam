// NAME: Adapter for Stepper Motor 5x3 Shaft
// CATEGORY: Adapter Motor
// COLOR: 379

include <bitbeam-lib/bitbeam-lib.scad>

color("LightSlateGray")
translate([0,0,unit/2])
mirror([0,0,1])
    difference(){
        union(){
            cylinder(d=unit*2, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, 0])
                cube_arm(3);
            translate([0, 0, -unit/2])
                ecube([unit, unit, unit], true);
        }

        // shaft
        difference(){
            translate([0, 0, -unit*0.25])
                cylinder(d=5.1, h=unit*1.6, center=true);
            translate([2.5+1.6, 0, -unit*0.25])
                cube([5, 5, unit*1.61], center=true);
            translate([-2.5-1.6, 0, -unit*0.25])
                cube([5, 5, unit*1.61], center=true);
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
            cylinder(d=3, h=unit*2.01, center=true);


        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
    }
