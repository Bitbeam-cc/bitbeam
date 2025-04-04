// NAME: Adapter for Gearbox Motor 4.5x3.8 Shaft
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

color("LightSlateGray")
translate([0,0,unit/2])
mirror([0, 0, 1])
    difference(){
        union(){
            ecylinder(d=unit*2, h=unit, center=true);
            rotate([0, 0, 90])
                intersection(){
                    translate([-unit, 0, 0])
                        cube_arm(3, side_holes=false);
                    translate([0, 0, -unit*0.5])
                        ecylinder(unit*3, unit);
                }
            translate([0, 0, -unit/2])
                ecube([unit, unit, unit], true);
        }


        translate([0, 0, -unit*0.25])
            rotate([0, 0, 90])
            shaft_hole(1.5);


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
    }
