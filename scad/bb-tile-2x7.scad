// NAME: Beam Tile 2x7
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit/4])
    color("RoyalBlue")
    difference(){
        ecube([unit*7, unit*2, unit*1/2], true);
        for (y=[-1, 1])
            translate([-unit*3, unit*y*0.5, -unit*1/8])
                holes(7, h=1/4);
    }
