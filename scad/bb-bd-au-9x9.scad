// NAME: Arduino UNO Board Beam 9x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

size = 70;


module bb_brd_9x9(){
    difference(){
        union(){
            translate([-unit/2, unit/2, -unit*0.5])
                ecube([unit*9, unit*7, unit*0.25]);

            for (i=[0,1]){
                translate([17-unit/2,unit*7,-unit/2+5/2])
                    mirror([0,i,0])
                    translate([0,i*unit*6,0])
                    {
                        cylinder(d=6, h=5, center=true);
                        translate([-1.09, -48.4, 0])
                            cylinder(d=6, h=5, center=true);
                        translate([51, -15.25, 0])
                            cylinder(d=6, h=5, center=true);
                        translate([51, -43.25, 0])
                            cylinder(d=6, h=5, center=true);
                    }
            }
        }

        for (i=[0,1]){
            translate([17-unit/2,unit*7,-unit/2+5/2])
                mirror([0,i,0])
                translate([0,i*unit*6,0])
                {
                    cylinder(d=3.3, h=5.1, center=true);
                    translate([-1.0929112, -48.4026972, 0])
                        cylinder(d=3.3, h=5.1, center=true);
                    translate([51, -15.25, 0])
                        cylinder(d=3.3, h=5.1, center=true);
                    translate([51, -43.25, 0])
                        cylinder(d=3.3, h=5.1, center=true);
                }
        }
    }

    for (y=[0, 1]) {
        for (x=[0, 1]) {
            translate([x*unit*(7-y), y*unit*8, 0])
                difference(){
                    cube_arm(2+y, side_holes=false);
                    // horizontal holes only on 2 len block *(y-1)
                    if (y == 0)
                        translate([unit*0.5, 0, 0])
                        rotate([0,90*(y-1),0])
                            holes(1, h=2);
                }
            translate([x*unit*(7-y)-4, y*unit*8-8*y+3, -4])
                ecube([unit*(2+y), 2, unit*0.25], false);
        }
    }
}


translate([-4*unit, -4*unit, unit/2])
    color("YellowGreen")
    bb_brd_9x9();
