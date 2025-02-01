// NAME: Beam 2x2 Thin
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-0.5*unit, -0.5*unit, unit/4])
    color("RoyalBlue")
    cube_base(2, 2, h=0.5, fill_holes=true);
