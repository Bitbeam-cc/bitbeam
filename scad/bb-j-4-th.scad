// NAME: Beam Join 4 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/join.scad>

color("RoyalBlue")
    translate([-1.5*unit, unit*0.5, unit*0.25])
    join(4);
