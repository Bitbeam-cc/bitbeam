// NAME: Plate 3x3 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-unit, -1*unit, unit/4])
color("green")
    cube_base(3, 3, h=0.5, fill_holes=true);
