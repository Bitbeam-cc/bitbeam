// NAME: Joint Blocks with Beam 1 in the middle
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/joints.scad>

translate([0, unit*0.5, unit*0.5])
    color("DarkOrange")
    difference(){
        ecube([unit*2.4, unit, unit], true);
        translate([unit, 0, 0])
            joint_hole();
        translate([-unit, 0, 0])
            mirror([1, 0, 0])
            joint_hole();

        for (i = [0, 1])
            rotate([i*90, 0, 0])
            holes(1);
    }
