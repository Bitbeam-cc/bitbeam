// NAME: Base plate 7x14 Thin
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit/2-3.5*unit, unit/2-7*unit, unit/4])
    color("green")
    cube_base(7, 14, x2=7, h=0.5, fill_holes=true);
