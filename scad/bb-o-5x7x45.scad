// NAME: Beam Frame 5x7 with one side 45 Dec
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

rotate([0, 0, -90])
color("RoyalBlue")
difference(){
    union(){
        for (i=[-1, 1])
            translate([4-2.5*unit, i*unit*3, 4])
            cube_arm(5, skip=[4],  skip_side=[0, 4]);

        translate([-unit*2, -unit*3, 4])
            rotate([0, 0, 90])
            cube_arm(7, skip_side=[0, 6]);

        translate([unit*2, 0, unit*0.5])
            cube([unit, unit*7-edge*1.4, unit], true);
    }

    translate([unit*2.5, 0, unit])
        rotate([0, 45, 0])
        cube([11.32, unit*7.1, 11.32], true);

}
