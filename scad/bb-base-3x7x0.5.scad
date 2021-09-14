// NAME: Base plate 3x7 Thin
// COLOR: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit/2-1.5*unit, unit/2-3.5*unit, unit/4])
    color("green")
    cube_base(3, 7, x2=3, h=0.5, fill_holes=true);
