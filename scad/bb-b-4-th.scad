// NAME: Beam 4 Thin

include <bitbeam-lib/bitbeam-lib.scad>

translate([4-2*unit, 4, unit/8])
    cube_arm(4, h=1/2);
