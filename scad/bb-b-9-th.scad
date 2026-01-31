// NAME: Beam 9 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-4*unit, unit*0.5, unit*0.25])
    color("RoyalBlue")
    cube_arm(9, h=0.5);
