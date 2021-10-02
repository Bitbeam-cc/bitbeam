// NAME: Beam U Shape 2x3x2
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([4-1.5*unit, 4, unit/2]) {
    cube_arm(3);
    translate([unit*2, 0, 0])
        rotate([0, 0, 90])
        cube_arm(2);
    rotate([0, 0, 90])
        cube_arm(2);
}
