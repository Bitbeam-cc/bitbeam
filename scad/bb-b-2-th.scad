// NAME: Beam 2 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-0.5*unit, unit/2, unit/4])
    color("RoyalBlue")
    cube_arm(2, h=1/2);
