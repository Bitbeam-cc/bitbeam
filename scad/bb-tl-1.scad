// NAME: Beam Tile 1
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit, unit, unit*1/2], true);
        translate([0, 0, -unit*1/8])
            holes(1, h=1/4);
    }
