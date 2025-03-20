// NAME: Beam Tile 2x9
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*9, unit*2, unit*1/2], true);
        for (y=[-1, 1])
            translate([-unit*4, unit*y*0.5, -unit*1/8])
                holes(9, h=1/4);
    }
