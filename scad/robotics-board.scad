// NAME: ESP32-S3 Robotics Board
// COLOR: 7

include <bitbeam-lib/bitbeam-lib.scad>

module pin(){
    color("black")
    translate([0, 0, 2.5/2])
        cube([2.5, 2.5, 2.5], true);
    color("goldenrod")
    translate([0, 0, 3])
        cube([0.5, 0.5, 11.5], true);
}

module robotics_board(){
    color("#fafafa")
    difference(){
        translate([0, 0, 0.8])
            cube([68, 50, 1.6], true);


         for (x=[-1, 1], y = [-1, 1]){
            translate([30*x, 20*y, -0.1])
                cylinder(d=3.3, 1.8);
            }
         translate([-28, 20, -0.1])
            cylinder(d=3.3, 1.8);

         translate([0, -22.1, 0.8])
            cube([19.8, 6, 1.7], true);
    }

    color("black")
    translate([0, -12.5, 2.1])
        cube([18, 25.5, 0.9], true);
    color("silver")
    translate([0, -9, 3.7])
        cube([16.9, 17.5, 2.5], true);

    for (y = [1:8], x=[0, 1])
        translate([-30+x*2.5, (y-5)*2.5, 1.6])
            pin();
    for (y = [1:9])
        translate([-30+2*2.5, (y-6)*2.5, 1.6])
            pin();
    for (y = [1:4])
        translate([-30+3*2.5, (y-1)*2.5, 1.6])
            pin();

    for (y = [1:4])
        translate([-30+6*2.5, (y-3)*2.5, 1.6])
            pin();

    for (x = [1:7])
        translate([-30+(x+8)*2.5, 3*2.5, 1.6])
            pin();

    // USB-C
    color("silver")
    hull(){
        translate([19, -17.5, 3.6])
            rotate([90, 0, 0])
            cylinder(d=4, h=8);
        translate([24, -17.5, 3.6])
            rotate([90, 0, 0])
            cylinder(d=4, h=8);
    }

    // BAT
    color("moccasin")
    translate([29, -10, 4])
        cube([8, 8, 6], true);

    // Quiic
    color("moccasin")
    translate([-24, -22, 2])
        cube([7, 5, 3], true);
    color("moccasin")
    translate([-16, -22, 2])
        cube([7, 5, 3], true);

    // switch
    color("silver")
    translate([17, 20, 0])
        cube([9, 5, 5]);
}

robotics_board();
