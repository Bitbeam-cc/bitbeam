// NAME: Beam Ang. 2x6 90 Deg. Thin

include <bitbeam-lib/bitbeam-lib.scad>

translate([4-3*unit, 4, unit/8])
    cube_angle(2,6, 90, h=1/2);
