// NAME: Beam 6 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-2.5*unit, unit*0.5, unit*0.25])
    color("RoyalBlue")
    cube_arm(6, h=0.5);
