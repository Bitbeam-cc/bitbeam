// NAME: Plate 7x14 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-6.5*unit, -3*unit, unit/4])
    color("green")
    cube_base(14, 7, h=0.5, fill_holes=true);
