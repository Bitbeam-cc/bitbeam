// NAME: Jointed Beam 1 in the middle Thin
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/joints.scad>

translate([0, unit*0.5, unit*0.25])
    color("DarkOrange")
    difference(){
        ecube([unit*2.4, unit, unit*0.5], true);
        translate([unit, 0, 0])
            joint_hole();
        translate([-unit, 0, 0])
            mirror([1, 0, 0])
            joint_hole();
        holes(1, h=0.5);
    }
