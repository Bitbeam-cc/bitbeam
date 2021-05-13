// NAME: Beam 1 x 1 Thin

include <bitbeam-lib/bitbeam-lib.scad>

translate([-unit/2, unit/2, unit/2]) {
    difference(){
        translate([0, 0, -unit/4])
        cube_arm(2, h=0.5);

        rotate([90, 0, 0])
            holes(1);
    }

    cube_arm(1);
}