// NAME: Connecting Rod Beam 3 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/connecting_rod.scad>

color("RoyalBlue")
    translate([-unit, unit*0.5, unit*0.25-0.1])
    join(3);
