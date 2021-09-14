// NAME: Base plate 2x5 Thin
// COLOR: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit/2-1*unit, unit/2-2.5*unit, unit/4])
    color("green")
    cube_base(2, 5, x2=2, h=0.5, fill_holes=true);
