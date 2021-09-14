// NAME: Beam Ang. 4.5x4.5 90 Deg.
// COLOR: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([4, 4, 4]) {
    difference(){
        union(){
            translate([unit*3.5, 0, 0])
                mirror([1, 0, 0])
                cube_arm(4.5, skip=[3], skip_side=[3]);
            translate([0, -unit*3.5, 0])
                rotate([0, 0, 90])
                cube_arm(4.5, skip=[3], skip_side=[3]);
        }

        holes(1);
    }
}
