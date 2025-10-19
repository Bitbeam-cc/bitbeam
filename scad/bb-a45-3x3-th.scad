// NAME: Beam Ang. 3x3 45 Deg. Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([unit*0.5, unit*0.5, unit*0.25])
    cube_angle(3, 3, 45, h=0.5);
