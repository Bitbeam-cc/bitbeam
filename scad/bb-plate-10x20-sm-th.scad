// NAME: Plate 10x20 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-9.5*unit, -4.5*unit, unit/4])
    color("green")
    cube_base(20, 10, h=0.5, fill_holes=false);
