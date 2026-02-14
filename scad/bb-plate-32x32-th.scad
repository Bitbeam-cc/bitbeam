// NAME: Plate 32x32 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-15.5*unit, -15.5*unit, unit/4])
    color("green")
    cube_base(32, 32, h=0.5, fill_holes=true);
