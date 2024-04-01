// NAME: OctopusLAB FIRST2/ESP32/EDU/FET Board Beam 9x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module brd_oedu(){
    difference(){
        union(){
            translate([-unit/2, unit/2, -unit*0.5])
                ecube([unit*9, unit*7, unit*0.25]);

            translate([32, 32, -unit*0.5])
                for (x=[-1, 1], y=[-1, 1]){
                    translate([30*x, 20*y, 0])
                        cylinder(d=6, h=5.1);
                }
        }

        translate([32, 32, -unit*0.5-0.05])
            for (x=[-1, 1], y = [-1, 1]){
                translate([30*x, 20*y, 0])
                    cylinder(d=3.3, h=5.2);
            }
    }


    for (y=[0, 1], x=[0, 1]) {
        translate([x*unit*(7-y), y*unit*8, 0])
            difference(){
                cube_arm(2+y, side_holes=false);
                if (y == 0)
                    translate([unit*0.5, 0, 0])
                    rotate([0,90*(y-1),0])
                        holes(1, h=2);
            }
        translate([x*unit*(7-y)-4, y*unit*8-8*y+3, -4])
            ecube([unit*(2+y), 2, unit*0.25], false);
    }
}

rotate([0, 0, 90])
translate([-4*unit, -4*unit, 4])
    color("YellowGreen")
    brd_oedu();
