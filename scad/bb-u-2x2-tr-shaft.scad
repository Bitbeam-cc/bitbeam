// NAME: Beam U Shape 2x2 Thin Rounded sides with Shaft holes
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

color("DarkOrange")
translate([0, -unit*0.5, unit*0.5])
    difference(){
        union(){
            translate([unit*-0.5, 0, 0])
                rotate([90, 0, 0])
                cube_arm(2);
            // 0.1 mm thinner sided
            for (x = [-1, 1])
                translate([x*unit*(0.75+0.05/unit), 0, 0])
                rotate([90, 0, 90])
                mix_arm(2, h=0.5-(0.1/unit), skip=[0, 1]);
        }


        translate([-unit*0.5, 0, 0]){
            holes(2);
            rotate([90, 0, 0])
                holes(2);
        }

        translate([0, unit, 0])
            rotate([0, 90, 0])
            shaft_hole(2);
}
