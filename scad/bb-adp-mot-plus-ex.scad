// NAME: Extra Adapter for Motor Plus Shaft
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

color("LightSlateGray")
translate([0,0,unit/2])
    difference(){
        union(){
            translate([0, 0, unit*0.25])
                ecube([unit, unit, unit*1.5], true);
            rotate([0, 0, 90])
                intersection(){
                    translate([-unit, 0, -unit/4])
                        cube_arm(3, h=0.5);
                    translate([0, 0, -unit/2])
                        ecylinder(unit*3, unit*0.5);
                }
        }

        // shaft
        translate([0, 0, unit*0.25])
            plus_hole(1.5);

        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
    }
