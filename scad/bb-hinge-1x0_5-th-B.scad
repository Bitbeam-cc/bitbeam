// NAME: Hinge Beam 1 x 0.5 Thin B
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-hinge-1x0_5-th-A.scad>

color("DarkOrange")
translate([-unit*0.5, unit*0.5, 0])
mirror([1, 0, 0])
    hinge();
