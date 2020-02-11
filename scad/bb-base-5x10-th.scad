// NAME: Base plate 5x10x0.5

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit/2-2.5*unit, unit/2-5*unit, unit/4])
    cube_base(5, 10, x2=5, h=0.5, fill_holes=true);

