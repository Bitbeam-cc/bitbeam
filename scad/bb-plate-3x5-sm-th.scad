// NAME: Plate 3x5 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-2*unit, -unit, unit/4])
    color("green")
    cube_base(5, 3, h=0.5, fill_holes=false);