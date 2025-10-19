// NAME: 28BYJ-48 Driver Board O Beam 4x5
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module bb_bd_28byj(){
    difference(){
        union(){
            translate([-2*unit, -1.5*unit, 0])
                cube_frame(5, 4);
            for (x=[-1, 1], y=[-1, 1])
                translate([x*unit*2, y*unit*1.5, 0])
                    ecube([unit, unit, unit], true);
        }

        for (x=[-1, 1], y=[-1, 1])
            translate([x*30.5/2, y*26.5/2, 0])
                cylinder(d=2.8, h=unit+0.1, center=true);


    }
}

translate([0, 0, unit/2])
    color("YellowGreen")
    bb_bd_28byj();
