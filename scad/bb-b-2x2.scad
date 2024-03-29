// NAME: Beam 2x2
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    translate([-0.5*unit, 4, unit])
        cube_arm(2, h=2, side_holes=false);

    translate([-0.5*unit, 4, unit*0.5])
        rotate([90, 0, 0])
        holes(2);
    translate([-0.5*unit, 4, unit*1.5])
        rotate([90, 0, 0])
        holes(2);
}