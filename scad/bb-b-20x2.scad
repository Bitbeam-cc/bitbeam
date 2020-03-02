// NAME: Beam 20x1

include <bitbeam-lib/bitbeam-lib.scad>

translate([4-10*unit, 4, unit*0.5])
    cube_arm(20, h=1.001);
translate([4-10*unit, 4, unit*1.5])
    cube_arm(20, h=1);