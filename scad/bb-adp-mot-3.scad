// NAME: Adapter for Motor 3mm Shaft
// CATEGORY: Adapter Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

color("LightSlateGray")
translate([0,0,unit/2])
mirror([0, 0, 1])
    difference(){
        union(){
            cylinder(d=unit*2, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, 0])
                cube_arm(3, side_holes=false);
            translate([0, 0, -unit/2])
                ecube([unit, unit, unit], true);
        }

        // shaft
        translate([0, 0, -unit*0.25])
            cylinder(d=3.2, h=unit*1.6, center=true);

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
