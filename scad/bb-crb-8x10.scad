// NAME: Cyber Robot Board 8x10
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>

module bb_crb_8x10(){
    difference(){
        union(){
            cube_arm(8, side_holes=false);
            translate([0,9*unit,0])
                cube_arm(8, side_holes=false);
    
            translate([-unit/2, unit/2, -unit/2])
                cube([unit*8, unit*8, 2]);
    
            translate([-unit/2, unit/2, -unit/2])
                cube([unit*8, 2, unit]);
    
            translate([-unit/2, unit*8.5-2, -unit/2])
                cube([unit*8, 2, unit]);
        }
        translate([-unit/2-0.1, unit/2-1, 1])
            cube([unit*8-3.5, unit*8+2, 1.4]);
    }
}

translate([-3.5*unit, -4.5*unit, unit/2])
    bb_crb_8x10();
