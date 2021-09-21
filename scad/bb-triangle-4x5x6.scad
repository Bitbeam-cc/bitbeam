// NAME: Beam Triangle 4x5x6
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    union(){
        translate([0, 0, unit/2])
            cylinder_angle(4, 5, 90, side_holes=false);

        translate([0, unit*3, 4])
            rotate([0, 0, -36.85])
            cylinder_arm(6, skip_side=[0,1,4,5]);
    }

    translate([unit, 0, unit/2])
        rotate([90,0, 0])
        holes(2);
    translate([0, unit, unit/2])
        rotate([90,0, 90])
        holes(1);
    translate([unit*3, 0, unit/2])
        holes(1);
    translate([unit*4, 0, unit/2])
        rotate([0, 0, 143])
        holes(2);
}
