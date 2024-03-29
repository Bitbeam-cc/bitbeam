// NAME: Plate 10x7 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-4.5*unit, -3*unit, unit/4])
    color("green")
    cube_base(10, 7, h=0.5, fill_holes=false);
