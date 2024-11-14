// NAME: Plate 3x10 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-4.5*unit, -unit, unit/4])
    color("green")
    cube_base(10, 3, h=0.5, fill_holes=false);
