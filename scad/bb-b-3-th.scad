// NAME: Beam 3 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-unit, unit/2, unit/4])
    color("RoyalBlue")
    cube_arm(3, h=1/2);
