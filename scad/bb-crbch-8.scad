// NAME: Cyber Robot Batery Case Holder 8x1
// CATEGORY: Electric
// COLOR: 27

include <bitbeam-lib/bitbeam-lib.scad>


module bb_crbch_8(){
    cube_arm(8, side_holes=false);
    translate([-unit/2, -unit/2-3.2, -unit/2])
        cube([unit*8, 3.2, 4]);
    translate([-unit/2, -unit/2-3.2, 2])
        cube([unit*8, 3.2, 2]);
}

translate([-3.5*unit, 0, unit/2])
    color("YellowGreen")
    bb_crbch_8();
