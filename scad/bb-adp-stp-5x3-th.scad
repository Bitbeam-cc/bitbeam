// NAME: Thin Adapter for Stepper Motor 5x3 Shaft
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

color("LightSlateGray")
translate([0,0,unit/2])
    difference(){
        union(){
            cylinder(d=unit*1.5, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, -unit/4])
                cube_arm(3, h=0.5);
        }

        // shaft
        difference(){
            cylinder(d=5.1, h=unit*1.01, center=true);
            translate([2.5+1.6, 0, 0])
                cube([5, 5, unit*1.02], center=true);
            translate([-2.5-1.6, 0, 0])
                cube([5, 5, unit*1.02], center=true);
        }

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
