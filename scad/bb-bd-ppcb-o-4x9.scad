// NAME: Prototype PCB 30x70 O Beam 4x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module bb_bd_pcb(){
    difference(){
        union(){
            cube_frame(9, 4);

            for (x=[0, 8], y=[0, 3]){
                translate([x*unit, unit*y, 0])
                    ecube([unit, unit, unit], true);
            }
        }

        for (x=[-1, 1], y=[-1, 1]){
                translate([unit*4+x*66/2, unit*1.5+y*26/2, 0])
                    cylinder(d=1.9, h=unit+0.1, center=true);
            }
    }
}

translate([-4*unit, -1.5*unit, unit/2])
    color("YellowGreen")
    bb_bd_pcb();

if ($t == 1){
    color("green", 0.3)
    translate([0, 0, unit+2])
        cube([70, 30, 1.5], true);

    color("silver", 0.5)
    for (x=[-12:12], y=[-4.5:4.5])
        translate([x*2.52, y*2.52, unit+2])
            cylinder(d=2, h=1.6, center=true);
}
