// NAME: Beam 24x2

include <bitbeam-lib/bitbeam-lib.scad>

translate([4-12*unit, 4, unit*0.5])
    cube_arm(24, h=1.001);
translate([4-12*unit, 4, unit*1.5])
    cube_arm(24, h=1);