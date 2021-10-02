// NAME: Beam Ang. 2x6 90 Deg. Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([4-3*unit, 4, unit/8])
    cube_angle(2,6, 90, h=1/2);
