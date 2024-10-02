// NAME: Beam U Shape 3x6
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([-2.5*unit, 4, unit/2]) {
    cube_arm(6);
    translate([unit*5, 0, 0])
        rotate([0, 0, 90])
        cube_arm(3);
    rotate([0, 0, 90])
        cube_arm(3);
}
