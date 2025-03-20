// NAME: Beam Tile 5
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*5, unit, unit*1/2], true);
        translate([-unit*2, 0, -unit*1/8])
            holes(5, h=1/4);
    }
