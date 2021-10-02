// NAME: Beam H 5x3
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue"){

translate([-unit*2, 0, 0])
    cube_arm(5, skip_side=[0,4]);

translate([-unit*2, -unit, 0])
    rotate([0,0,90])
    cube_arm(3, skip_side=[1]);

translate([unit*2, -unit, 0])
    rotate([0,0,90])
    cube_arm(3, skip_side=[1]);
}
