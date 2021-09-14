// NAME: Arduino UNO Beam 9x9
// CATEGORY: Electric
// COLOR: 27

include <bitbeam-lib/bitbeam-lib.scad>

size = 70;


module bb_cau_9x9(){
    difference(){
        union(){
            translate([-unit/2, unit/2, -unit*0.5])
                cube([unit*9, unit*7, unit*0.25]);

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
                    rotate([0,90*(y-1),0])
                        cylinder(d=hole, h=unit*3.1, center=true);
                }
        }
    }
}


translate([-4*unit, -4*unit, unit/2])
    color("YellowGreen")
    bb_cau_9x9();
