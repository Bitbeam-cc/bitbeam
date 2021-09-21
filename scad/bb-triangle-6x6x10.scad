// NAME: Beam Triangle 6x6x10
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>


color("RoyalBlue")
difference(){
    angel=91.2;
    union(){
        translate([0, unit*2.5, 4])
            rotate([0, 0, (-360+angel)/2])
            cylinder_angle(6, 6, angel, side_holes=false);

        translate([-unit*3.5, -unit-0.53, 4])
            cylinder_arm(8, skip_side=[0,1,6,7]);
    }

    for (i =[0, 1])
    mirror([i, 0, 0]){

        translate([0, unit*2.5, unit/2])
            rotate([90, 0, (-360+angel)/2])
            translate([unit, 0, 0])
            holes(3);

        translate([unit*2.5, -unit-0.53, unit/2])
            holes(1);

        translate([unit*3.5, -unit-0.53, unit/2])
            rotate([0, 0, (360-angel)/2])
            holes(2);
    }

}
