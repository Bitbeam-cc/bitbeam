// NAME: Plate 37x37 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-18*unit, -18*unit, unit/4])
    color("green")
    cube_base(37, 37, h=0.5, fill_holes=true);
