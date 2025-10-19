// NAME: Beam U Shape 2x4
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([-1.5*unit, 4, unit/2]) {
    cube_arm(4);
    translate([unit*3, 0, 0])
        rotate([0, 0, 90])
        cube_arm(2);
    rotate([0, 0, 90])
        cube_arm(2);
}
