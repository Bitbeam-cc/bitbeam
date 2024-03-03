// NAME: Beam Join 3 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/join.scad>

color("RoyalBlue")
    translate([-unit, unit*0.5, unit*0.25])
    join(3);
