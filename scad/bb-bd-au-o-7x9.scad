// NAME: Arduino UNO Board O Beam 7x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module bb_bd_auno(){
    difference(){
        union(){
            cube_frame(9, 7);
            translate([unit*1.5, 0, 0])
                ecube([unit*2, unit, unit], true);
            translate([unit*2, unit*6, 0])
                ecube([unit, unit, unit], true);

            for (y=[1, 4]){
                translate([unit*8, unit*y, 0])
                    ecube([unit, unit, unit], true);
            }
        }

        translate([17-unit/2,unit*6,0]){
            cylinder(d=2.8, h=unit+0.1, center=true);
            translate([-1.0929112, -48.4026972, 0])
                cylinder(d=2.8, h=unit+0.1, center=true);
            translate([51, -15.25, 0])
                cylinder(d=2.8, h=unit+0.1, center=true);
            translate([51, -43.25, 0])
                cylinder(d=2.8, h=unit+0.1, center=true);
        }

    }
}

translate([-4*unit, -3*unit, unit/2])
    color("YellowGreen")
    bb_bd_auno();
