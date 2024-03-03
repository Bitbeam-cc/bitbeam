// NAME: Mini Gear Motor Mount
// CATEGORY: Motor Train
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/holes.scad>


module gear_motor_holder() {
    difference(){
        ecube([unit*3, unit*4, unit*3], true);

        translate([0, 0, 20/2-5])
            ecube([12.2, 28, 20], true);

        hull(){
            translate([0, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=4.2, h=3, center=true);
            translate([0, 15, 13])
                rotate([90, 0, 0])
                cylinder(d=4.2, h=3, center=true);
        }

        for (i = [-1, 1])
            translate([i*4.5, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=2, h=3, center=true);

    }
}

!difference(){
    union(){
        translate([0, -4, 2])
            ecube([unit*3, 24, 12], true);
        
        for (x = [-1, 1]){
            translate([x* -unit*1.25, 0, 2])
                ecube([unit*0.5, unit*6, 12], true);
        }
    }
    
    translate([0, -8, 0])
        ecube([12.2, 28, 10], true);
    
    translate([0, 15-8, 0])
        rotate([90, 0, 0])
        cylinder(d=4.2, h=3, center=true);
    for (i = [-1, 1])
        translate([i*4.5, 15-8, 0])
        rotate([90, 0, 0])
            cylinder(d=2, h=3, center=true);
    
    translate([0, 0, 6])
        rotate([0, 0, 90])
        shaft_hole(0.5);
    for(y = [-1, 1])
        translate([0, y*unit*2.5, 0])
        rotate([0, 90, 0])
            cylinder(d=hole, h=unit*3.1, center=true);
    
}

// motor()
use <bb-gr-bevel-12-3x2_5.scad>
*translate([0, -8, 0])
{
    color("silver"){
        translate([0, 0, 0])
            ecube([12, 28, 10], true);
        translate([0, 5, 0])
            rotate([90, 0, 0])
            cylinder(d=3, h=38, center=true);
        }
    color("skyblue")
        translate([0, 20.2, 0])
            rotate([-90, 0, 0])
            gear_12();
}

use <lib/shafts.scad>
color("gray")
    translate([0, unit*2.5, 0])
    rotate([0, 90, 0])
    shaft(5);
color("gray")
    for (x = [-1, 1])
    translate([x*unit*1.75, -unit*2.5, 0])
    rotate([0, x*90, 0])
    t_shaft(1.5);


color("skyblue")
    translate([-7.5, 20.2, 0])
    rotate([0, 90, 0])
    rotate([0, 0, 360/12/2])
    gear_12();

use <bb-wh-rail-2-shaft.scad>

color("red"){
    for (i=[-1, 1])
        translate([i*unit*1.75, unit*2.5, 0])
        rotate([0, i*90, 0])
        rwheel(2);
}
*%translate([0, 0, -unit*1])
    cube([100, 100, 0.1], true);
