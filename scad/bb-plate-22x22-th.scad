// NAME: Plate 22x22 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-10.5*unit, -10.5*unit, unit/4])
    color("green")
    cube_base(22, 22, h=0.5, fill_holes=true);
