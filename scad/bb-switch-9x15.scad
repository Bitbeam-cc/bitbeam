// NAME: Switch 9x15 Box
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <switch-9x15.scad>

module bb_switch(){
    difference(){
        translate([-unit*0.5, -unit*1.5, 0])
            cube_plate(2, 4, holes=[0, 2]);
        cube([9, 15, unit*1.01], center=true);
        translate([0, 0, unit*0.5-0.5])
            cube([11, 15, 1.01], center=true);

        for (x=[-1, 1], y=[-1, 1])
            translate([x*unit*0.5, y*unit*1.5, 0])
            rotate([0, 90, 0])
                holes(1);
    }
}

translate([0, 0, unit/2])
    color("YellowGreen")
    bb_switch();

translate([0, 0, 1])
    %switch();
