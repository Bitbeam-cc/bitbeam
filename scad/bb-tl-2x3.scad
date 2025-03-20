// NAME: Beam Tile 2x3
// LDRAW: 1
// CATEGORY: Tile

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*3, unit*2, unit*1/2], true);
        for (y=[-1, 1])
            translate([-unit, unit*y*0.5, -unit*1/8])
                holes(3, h=1/4);
    }
