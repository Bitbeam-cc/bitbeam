// NAME: Beam Tile 9
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*9, unit, unit*1/2], true);
        translate([-unit*4, 0, -unit*1/8])
            holes(9, h=1/4);
    }
