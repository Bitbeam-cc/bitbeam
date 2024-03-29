// NAME: Plate 3x7 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-3*unit, -1*unit, unit/4])
    color("green")
    cube_base(7, 3, h=0.5, fill_holes=false);
