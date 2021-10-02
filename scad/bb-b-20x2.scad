// NAME: Beam 20x2
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    translate([4-10*unit, 4, unit])
            cube_arm(20, h=2, side_holes=false);

    translate([4-10*unit, 4, unit*0.5])
        rotate([90, 0, 0])
        holes(20);
    translate([4-10*unit, 4, unit*1.5])
        rotate([90, 0, 0])
        holes(20);
}
