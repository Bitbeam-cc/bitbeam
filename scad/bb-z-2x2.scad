// NAME: Beam Z Shape 2x2x2
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue"){

translate([unit*0.5, unit*-0.5, unit*0.5])
    cube_angle(2, 2, 90);


translate([unit*0.5, unit*0.5, unit*0.5])
    rotate([0, 0, 180])
    cube_angle(2, 2, 90);

}
