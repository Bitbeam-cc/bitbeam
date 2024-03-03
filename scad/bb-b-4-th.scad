// NAME: Beam 4 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-1.5*unit, unit/2, unit/4])
    color("RoyalBlue")
    cube_arm(4, h=1/2);
