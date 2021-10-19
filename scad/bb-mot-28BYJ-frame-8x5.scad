// NAME: BYJ28-48 Motor Frame 8x5
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>
$fn=40;

color("red")
difference(){
    union(){
        translate([4*unit, -2*unit, unit*0.5])
            rotate([0, 0, 90])
            cube_arm(5, skip_side=[0,5]);
        translate([-1*unit, -2*unit, unit*0.5])
            rotate([0, 0, 90])
            cube_arm(5, skip=[1,2,3], side_holes=false);

        translate([-2*unit, -2*unit, unit*0.5])
            cube_arm(8, skip=[2,3,4], skip_side=[for (i=[2:4]) i]);
        translate([-2*unit, 2*unit, unit*0.5])
            cube_arm(8, skip=[2,3,4], skip_side=[for (i=[2:4]) i]);

        translate([unit, 0, 0])
            cylinder(d=33, h=16);
        translate([unit, 0, unit])
            cube([unit, unit*5, unit*2], center=true);

        translate([22, 0, unit])
            cube([6, unit*3.001, unit*2], center=true);
    }

    translate([unit, 0, -1])
        cylinder(d=28.7, h=18);

    translate([unit, -35/2, -1])
        cylinder(d=4.3, h=18);
    translate([unit, 35/2, -1])
        cylinder(d=4.3, h=18);

    translate([22, 0, unit])
        cube([9, 18, 17], center=true);

    for (x = [-1,4])
    for (y = [-1,1])
        translate([unit*x, y*unit*2, unit*0.5])
            rotate([90, 0, 0])
            holes(1);
}
