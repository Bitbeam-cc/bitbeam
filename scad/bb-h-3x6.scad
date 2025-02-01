// NAME: Beam H 3x6
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    union(){
        translate([-unit, 0, 0])
            cube_arm(3, skip_side=[0,2], skip=[0,1,2]);

        translate([-unit, -unit*2.5, 0])
            rotate([0,0,90])
            cube_arm(6, skip_side=[2,3], skip=[2,3]);

        translate([unit, -unit*2.5, 0])
            rotate([0,0,90])
            cube_arm(6, skip_side=[2,3], skip=[2,3]);
    }
    translate([-unit, 0, 0])
        holes(3);
}
