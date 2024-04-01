// NAME: Raspberry Pi Zero/2/W Board Beam 6x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module brd_rpiz(){
    difference(){
        union(){
            translate([unit*-0.5, unit*0.5, -unit*0.5])
                ecube([unit*9, unit*4, unit*0.25]);

            translate([32, 20, -unit*0.5])
                for (x=[-1, 1], y=[-1, 1]){
                    translate([58/2*x, 23/2*y, 0])
                        cylinder(d=6, h=5.1);
                }
        }

        translate([32, 20, -unit*0.5-0.05])
            for (x=[-1, 1], y = [-1, 1]){
                translate([58/2*x, 23/2*y, 0])
                    cylinder(d=2.7, h=5.2);
            }
    }


    for (y=[0, 1], x=[0, 1]) {
        translate([x*unit*(8-y*2), y*unit*5, 0])
            difference(){
                cube_arm(1+y*2, side_holes=false);
                if (y == 0)
                    translate([0, 0, 0])
                    rotate([0,90*(y-1),0])
                        holes(1, h=1);
            }
        translate([x*unit*(8-y*2)-4, y*unit*5-8*y+3, -4])
            ecube([unit*(1+y*2), 2, unit*0.25], false);
    }
}

translate([-4*unit, -2.5*unit, 4])
    color("YellowGreen")
    brd_rpiz();
