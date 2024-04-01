// NAME: Robot Board Octopus brick 10x11
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

size = 70;

/*
translate([0, 4, 0])
    rotate([0, 0, -90])
    translate([-35, -35, -8.9])
    color("green")
    import("octopus-robot-board-02.stl");
*/

module bb_octopus_board(){
    difference(){
        union(){
            translate([-unit/2, unit/2, -unit*0.5])
                cube([unit*10, unit*9, unit*0.25]);

            translate([35.5, 40.7, -unit*0.5])
                for (x=[-1, 1]){
                    for (y=[-1, 1]){
                        translate([(35-6)*x, (35-6.1)*y, 0])
                            cylinder(d=6, h=5.1);
                    }
                }
        }

        translate([35.5, 40.7, -unit*0.5-0.05])
            for (x=[-1, 1]){
                for (y=[-1, 1]){
                    translate([(35-6)*x, (35-6.1)*y, 0])
                        cylinder(d=3.3, h=5.2);
                }
            }
    }

    translate([-unit/2, unit/2, -unit*0.5])
        cube([unit*0.5, unit*9, unit*0.5]);
    translate([-unit/2+unit*9.5, unit/2, -unit*0.5])
        cube([unit*0.5, unit*9, unit*0.5]);

    for (y=[0, 1]) {
        for (x=[0, 1]) {
            translate([x*unit*(8-y), y*unit*10, 0])
                cube_arm(2+y, side_holes=false);
        }
    }
}


translate([4-5*unit, 4-5*unit, 4])
    color("YellowGreen")
    bb_octopus_board();
