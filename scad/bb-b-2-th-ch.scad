// NAME: Beam 1x2 Thin with Channel
// CATEGORY: Special
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit*-0.5, unit/4])
    color("DarkOrange")
    difference(){
        rotate([0, 0, 90])
            cube_arm(2, h=0.5);
        translate([0, unit*0.5, unit*0.25])
            ecube([unit*1.25, 2, unit*0.5], true);
    }
