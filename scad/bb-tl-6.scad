// NAME: Beam Tile 6
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*6, unit, unit*1/2], true);
        translate([-unit*2.5, 0, -unit*1/8])
            holes(6, h=1/4);
    }
