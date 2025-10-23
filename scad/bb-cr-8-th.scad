// NAME: Connecting Rod Beam 8 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/connecting_rod.scad>

color("RoyalBlue")
    translate([-3.5*unit, unit*0.5, unit*0.25-0.1])
    join(8);
