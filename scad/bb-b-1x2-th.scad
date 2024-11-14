// NAME: Beam 1 x 2 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([-1*unit, unit/2, unit/2]) {
    difference(){
        translate([0, 0, -unit/4])
        cube_arm(3, h=0.5);

        rotate([90, 0, 0])
            holes(1);
    }

    cube_arm(1);
}
