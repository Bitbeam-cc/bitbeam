// NAME: Beam 1 x 5 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([-2.5*unit, unit/2, unit/2]) {
    difference(){
        translate([0, 0, -unit/4])
        cube_arm(6, h=0.5);

        rotate([90, 0, 0])
            holes(1);
    }

    cube_arm(1);
}
