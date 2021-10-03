// NAME: Beam Triangle 7.8x7.8x12
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

%translate([unit*1.5, -unit*2, 4])
    rotate([0, 0, 90])
    cylinder_arm(5);

color("RoyalBlue")
difference(){
    angel=105.25;
    union(){
        translate([unit*1.5, unit*2, 4])
            rotate([0, 0, -45])
            cylinder_arm(6.657, skip_side=[0, 6]);
        translate([unit*1.5, unit*2, 4])
            rotate([0, 0, -45-angel])
            cylinder_arm(9.063, skip_side=[0, 6]);
        translate([-unit*5.5, -unit*2, 4])
            cylinder_arm(12, skip_side=[0,1,10,11]);
    }

    for (i =[0, 1])
    mirror([i, 0, 0]){
        translate([0, unit*2, unit/2])
            rotate([90, 0, (-360+angel)/2])
            translate([unit, 0, 0])
            holes(5);

        translate([unit*4.5, -unit*2, unit/2])
            holes(2);

        translate([0, unit*2, unit/2])
        rotate([0, 0, -(360-angel)/2])
            translate([unit*6, 0, 0])
            holes(1);
    }

}
