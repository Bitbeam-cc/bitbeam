// NAME: Beam Z Shape 3x2x3
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue"){

translate([unit*0.5, unit*-0.5, unit*0.5])
    cube_angle(2, 3, 90);


translate([unit*0.5, unit*0.5, unit*0.5])
    rotate([0, 0, 180])
    cube_angle(2, 3, 90);

}
