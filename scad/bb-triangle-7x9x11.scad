// NAME: Beam Triangle 7x9x11
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    union(){
        translate([0, 0, unit/2])
            cylinder_angle(7, 9, 90, side_holes=false);

        translate([0, unit*6, 4])
            rotate([0, 0, -36.85])
            cylinder_arm(11, skip_side=[0,1,9,10]);
    }

    translate([unit, 0, unit/2])
        rotate([90,0, 0])
        holes(6);
    translate([0, unit, unit/2])
        rotate([90,0, 90])
        holes(4);
    translate([unit*7, 0, unit/2])
        holes(1);
    translate([unit*8, 0, unit/2])
        rotate([0, 0, 143])
        holes(2);
}
