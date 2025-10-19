// NAME: Prototype PCB 50x70 O Beam 7x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module bb_bd_pcb(){
    difference(){
        union(){
            cube_frame(9, 7);

            for (x=[0, 8], y=[0, 6]){
                translate([x*unit, unit*y, 0])
                    ecube([unit, unit, unit], true);
            }
        }

        for (x=[-1, 1], y=[-1, 1]){
                translate([unit*4+x*66/2, unit*3+y*46/2, 0])
                    cylinder(d=1.9, h=unit+0.1, center=true);
            }
    }
}

translate([-4*unit, -3*unit, unit/2])
    color("YellowGreen")
    bb_bd_pcb();

if ($t == 1){
    color("green")
    translate([0, 0, unit+1])
        cube([70, 50, 1.5], true);

    color("silver")
    for (x=[-12:12], y=[-8.5:8.5])
        translate([x*2.52, y*2.52, unit+1])
            cylinder(d=2, h=1.6, center=true);
}
