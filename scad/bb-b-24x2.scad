// NAME: Beam 24x2
// COLOR: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    union(){
        translate([4-12*unit, 4, unit])
            cube_arm(24, h=2, side_holes=false);
    }

    translate([4-12*unit, 4, unit*0.5])
        rotate([90, 0, 0])
        holes(24);
    translate([4-12*unit, 4, unit*1.5])
        rotate([90, 0, 0])
        holes(24);
}
