// NAME: Base plate 2x5x0.5

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit/2-1*unit, unit/2-2.5*unit, unit/4])
    cube_base(2, 5, x2=2, h=0.5, fill_holes=true);