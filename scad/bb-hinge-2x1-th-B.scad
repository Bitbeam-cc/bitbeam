// NAME: Hinge Beam 2 x 1 Thin B
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-hinge-2x1-th-A.scad>

color("DarkOrange")
translate([unit*0.5, unit*0.5, 0])
    mirror([1, 0, 0])
    hinge();
