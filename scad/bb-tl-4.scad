// NAME: Beam Tile 4
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*4, unit, unit*1/2], true);
        translate([-unit*1.5, 0, -unit*1/8])
            holes(4, h=1/4);
    }
