// NAME: Base plate 10x20x0.5
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit/2-5*unit, unit/2-10*unit, unit/4])
    color("green")
    cube_base(10, 20, x2=10, h=0.5, fill_holes=true);
