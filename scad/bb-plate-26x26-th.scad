// NAME: Plate 26x26 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-12.5*unit, -12.5*unit, unit/4])
    color("green")
    cube_base(26, 26, h=0.5, fill_holes=true);
