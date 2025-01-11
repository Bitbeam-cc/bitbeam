// NAME: Battery 18650 Shield O Beam 4x13
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>


module brd_18650(){
    difference(){
        union(){
            cube_frame(4, 13);
            for (x=[-1, 1], y = [-1, 1]){
                translate([unit*1.5+x*unit*1.5, unit*6+y*unit*6, 0])
                    ecube([unit, unit, unit], true);
            }
        } 

     
        for (x=[-1, 1], y = [-1, 1]){
            translate([unit*1.5+x*25/2, unit*6+y*95/2, 0])
                cylinder(d=2.8, unit+0.1, center=true);
        }
    }
}

rotate([0, 0, 90])
translate([-1.5*unit, -6*unit, 4])
    color("YellowGreen")
    brd_18650();
