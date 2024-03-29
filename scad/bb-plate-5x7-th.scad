// NAME: Plate 5x7 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-3*unit, -2*unit, unit/4])
    color("green")
    cube_base(7, 5, h=0.5, fill_holes=true);
