// NAME: Kittenbot Robot:Bit Beam 7x8
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

board_w = 58;
board_l = 79;


module board(){
    r=3;

    difference(){
        hull(){
            for (x=[-1, 1])
                for (y=[-1, 1])
                    translate([x*board_l/2-x*r, y*board_w/2-y*r, 0])
                        cylinder(r=r, h=1.7, center=true);
        }

        for (x=[-1, 1])
            for (y=[-3, 2])
                translate([x*board_l/2-x-4.7/2*x, board_w/2*sign(y)-y-4.7/2*sign(y) , 0])
                    cylinder(d=4.7, h=1.8, center=true);

        for (x=[-9, 9])
            for (y=[-2, 4])
                translate([sign(x)*board_l/2-x-3/2*sign(x), board_w/2*sign(y)-y-3/2*sign(y) , 0])
                    cylinder(d=3, h=1.8, center=true);
    }
}


module bb_robot_bit(){
    for (x=[-1, 1])
        for (y=[-1, 1])
            translate ([x*4.5*unit, y*3*unit, 0])
                rotate([0, 0, 90])
                cube_arm(2, skip_side=[0]);

    translate([-4.5*unit, -3*unit, 0])
        cube_arm(10, skip_side=[0, 9]);

    translate([-4.5*unit, 3*unit, unit/-4])
        cube_arm(10, h=0.5);


/*
    difference(){
        translate([-unit/2, unit/2, -unit*0.5])
            cube([unit*10, unit*8, unit*0.25]);

        translate([-unit/2+(unit*10-mdbw)/2, (unit*8-mdbh)/2+mdbh-6, -unit*0.5-0.05])
            cube([mdbw, 8, 2.1]);

        translate([-unit/2+(unit*10-mdbw)/2, unit/2+(unit*8-mdbh)/2, -unit*0.5])
            for (y=[0, 1]){
                for (x=[0, 1]){
                    translate([4+x*(mdbw-8), 4+y*(41-8), -0.05])
                        cylinder(d=4, h=2.1);
                }
            }
    }

    translate([-unit/2, unit/2, -unit*0.5])
        cube([unit*0.5, unit*8, unit*0.5]);
    translate([-unit/2+unit*9.5, unit/2, -unit*0.5])
        cube([unit*0.5, unit*8, unit*0.5]);

    for (y=[0, 1]) {
        for (x=[0, 1]) {
            translate([x*unit*(8-y), y*unit*9, 0])
                cube_arm(2+y, side_holes=false);
        }
    }
*/
}

/*
translate([0,0,-4-1.7/2])
color("Green")
    board();
*/

//translate([4-5*unit, 4-5*unit, 4])
    color("YellowGreen")
    bb_robot_bit();
