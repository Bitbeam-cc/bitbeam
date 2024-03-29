// NAME: Beam 5x2 Thin
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-2*unit, -0.5*unit, unit/4])
    color("RoyalBlue")
    cube_base(5, 2, h=0.5, fill_holes=true);