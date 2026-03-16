// NAME: Beam 6x2
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>


color("RoyalBlue")
difference(){
    translate([-2.5*unit, 4, unit])
            cube_arm(6, h=2, side_holes=false);

    translate([-2.5*unit, 4, unit*0.5])
        rotate([90, 0, 0])
        holes(6);
    translate([-2.5*unit, 4, unit*1.5])
        rotate([90, 0, 0])
        holes(6);
}
