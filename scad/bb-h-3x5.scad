// NAME: Beam H 3x5
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue"){

translate([-unit, 0, 0])
    cube_arm(3, skip_side=[0,2]);

translate([-unit, -unit*2, 0])
    rotate([0,0,90])
    cube_arm(5, skip_side=[2]);

translate([unit, -unit*2, 0])
    rotate([0,0,90])
    cube_arm(5, skip_side=[2]);
}
