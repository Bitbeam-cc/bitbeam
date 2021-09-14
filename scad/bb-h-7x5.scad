// NAME: Beam H 7x5
// COLOR: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue"){
translate([-unit*3, 0, 0])
    cube_arm(7, skip_side=[0, 6]);

translate([-unit*3, -unit*2, 0])
    rotate([0,0,90])
    cube_arm(5, skip_side=[2]);

translate([unit*3, -unit*2, 0])
    rotate([0,0,90])
    cube_arm(5, skip_side=[2]);
}
