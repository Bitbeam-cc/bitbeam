// NAME: Beam H Frame 7x14
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([-6.5*unit, -3*unit, 4])
    color("RoyalBlue")
    union(){
        cube_h(14, 7);
        for (i = [5, 8]){
            translate([unit*i, 0, 0]){
                rotate([0, 0, 90])
                    cube_arm(7);
                for (y = [0, 6])
                    translate([0, unit*y, 0])
                    cube_arm(1, side_holes=false);
            }
        }
    }
