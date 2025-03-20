// NAME: Beam 1 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit*0.25])
    color("RoyalBlue")
    difference(){
        cube_arm(1, h=1/2);
    }
