// NAME: Plate 3x12 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-5.5*unit, -unit, unit/4])
    color("green")
    cube_base(12, 3, h=0.5, fill_holes=true);
