// NAME: Beam 1
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit*0.5])
    color("RoyalBlue")
    difference(){
        cube_arm(1);
        rotate([0, 90, 0])
            holes(1);
    }
