// NAME: Beam H 7x3

include <bitbeam-lib/bitbeam-lib.scad>

translate([-unit*3, 0, 0])
    cube_arm(7);

translate([-unit*3, -unit, 0])
    rotate([0,0,90])
    cube_arm(3);

translate([unit*3, -unit, 0])
    rotate([0,0,90])
    cube_arm(3);
