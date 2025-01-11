// NAME: OctopusLAB FIRST2/ESP32/EDU/FET Board O Beam 7x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <robotics-board.scad>
include <lib/screw_nuts.scad>

module brd_oedu(){
    difference(){
        translate([0, unit, 0])
        cube_frame(7, 9);

        translate([24, 40, -unit*0.5-0.05])
            for (x=[-1, 1], y = [-1, 1]){
                translate([20*x, 30*y, 0])
                    cylinder(d=2.8, unit+0.1);
            }
    }
}

rotate([0, 0, 90])
translate([-3*unit, -5*unit, 4])
    color("YellowGreen")
    brd_oedu();

if ($preview) {
    translate([0, 0, unit*2])
        robotics_board();

    color("LightSlateGray")
    for (x=[-1, 1], y = [-1, 1])
        translate([30*x, 20*y, unit*1.5])
        ecylinder(d=unit, h=unit-0.2, center=true);

    color("silver")
    for (x=[-1, 1], y = [-1, 1])
        translate([30*x, 20*y, 10])
        rotate([180, 0, 0])
            screw_m3(15);
}
