// NAME: BYJ28-48 Motor Frame 8x7
// CATEGORY: Beam Motor
// COLOR: 4

include <bitbeam-lib/bitbeam-lib.scad>
$fn=40;

color("red"){

translate([-2*unit, -3*unit, unit*0.5])
    cube_arm(8);
translate([-2*unit, 3*unit, unit*0.5])
    cube_arm(8);

translate([4*unit, -2*unit, unit*0.5])
    rotate([0, 0, 90])
    cube_arm(5, skip_side=[0,5]);
}

color("red")
difference(){
    union(){
        translate([-1*unit, -2*unit, unit*0.5])
            rotate([0, 0, 90])
            cube_arm(5, side_holes=false);

        translate([-2*unit, -2*unit, unit*0.5])
            cube_arm(8, skip=[2,3,4], skip_side=[for (i=[1:6]) i]);
        translate([-2*unit, 2*unit, unit*0.5])
            cube_arm(8, skip=[2,3,4], skip_side=[for (i=[1:6]) i]);

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
}
