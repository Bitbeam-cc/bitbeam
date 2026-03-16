// NAME: Beam 3x2 Thin with Channel
// CATEGORY: Special
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-unit, -0.5*unit, unit/4])
    color("DarkOrange")
    difference(){
        cube_base(3, 2, h=0.5, fill_holes=true);
        translate([unit, unit*0.5, unit*0.25])
            ecube([unit*3.25, 2, unit*0.5], true);
    }
