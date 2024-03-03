// NAME: Beam 5 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-2*unit, unit*0.5, unit*0.25])
    color("RoyalBlue")
    cube_arm(5, h=0.5);
