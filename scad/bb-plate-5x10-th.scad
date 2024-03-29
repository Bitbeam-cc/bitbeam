// NAME: Plate 5x10 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-4.5*unit, -2*unit, unit/4])
    color("green")
    cube_base(10, 5, h=0.5, fill_holes=true);
