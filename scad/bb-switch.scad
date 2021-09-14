// NAME: Switch Box
// CATEGORY: Electric
// COLOR: 27

include <bitbeam-lib/bitbeam-lib.scad>

module bb_switch(){
    difference(){
        cube_plate(2, 6, holes=[0, 2]);
        translate([unit*0.5, unit*2.5, 0])
            cube([13, 20, unit*1.01], center=true);
        translate([unit*0.5, unit*2.5, unit*0.5-1])
            cube([15, 22, 2.01], center=true);
    }
}

translate([unit/-2, -2.5*unit, unit/2])
    color("YellowGreen")
    bb_switch();
