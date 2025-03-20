// NAME: Beam Tile 7
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*7, unit, unit*1/2], true);
        translate([-unit*3, 0, -unit*1/8])
            holes(7, h=1/4);
    }
