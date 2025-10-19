// NAME: Box Beam 7x10
// CATEGORY: Special
// LDRAW: 80

include <bitbeam-lib/bitbeam-lib.scad>

module bb_box(){
    cube_frame(10, 7);
    translate([4.5*unit, 3*unit, -unit*0.5+0.5])
        cube([unit*8.1, unit*5.1, 1], true);
}

translate([-4.5*unit, -3*unit, unit/2])
    color("silver")
    bb_box();
