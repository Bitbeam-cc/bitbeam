// NAME: Beam 3x2
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    translate([-unit, 4, unit])
        cube_arm(3, h=2, side_holes=false);

    translate([-unit, 4, unit*0.5])
        rotate([90, 0, 0])
        holes(3);
    translate([-unit, 4, unit*1.5])
        rotate([90, 0, 0])
        holes(3);
}
