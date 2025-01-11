// NAME: Kittenbot Robot:Bit Board O Beam 7x10
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>


module brd_kittenbot(){
    difference(){
        union(){
            cube_frame(7, 10);
            for (x=[-1, 1], y = [-1, 1]){
                translate([unit*3+x*unit*3, unit*4.5+y*unit*3.5, 0])
                    ecube([unit, unit, unit], true);
            }
        } 

     
        for (x=[-1, 1], y = [-1, 1]){
            translate([unit*3+x*49/2, unit*4.5+y*58/2, 0])
                cylinder(d=2.8, unit+0.1, center=true);
        }
    }
}

rotate([0, 0, 90])
translate([-3*unit, -4.5*unit, 4])
    color("YellowGreen")
    brd_kittenbot();
