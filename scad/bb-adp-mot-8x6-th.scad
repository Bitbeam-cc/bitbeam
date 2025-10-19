// NAME: Thin Adapter for Stepper Motor 8x6 Shaft
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

color("LightSlateGray")
translate([0,0,unit/2])
    difference(){
        union(){
            ecylinder(d=unit*2, h=unit, center=true);
            rotate([0, 0, 90])
                intersection(){
                    translate([-unit, 0, -unit/4])
                        cube_arm(3, h=0.5);
                    translate([0, 0, -unit/2])
                        ecylinder(unit*3, unit*0.5);
                }
        }

        // shaft
        difference(){
            cylinder(d=8.1, h=unit*1.01, center=true);
            translate([5, 0, 0])
                cube([4, 5, unit*1.02], center=true);
            translate([-5, 0, 0])
                cube([4, 5, unit*1.02], center=true);
        }

        rotate([0, 90, 0])
            cylinder(d=2.8, h=16.1, center=true);


        for (y=[-1, 1]){
            translate([0, unit*y, -unit*0.25])
                holes(1, h=0.5);
        }
        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=unit, h=unit*0.51);
        }
    }
