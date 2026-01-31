// NAME: Beam Frame 5x7 Thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>


translate([4-3.5*unit, 4-2.5*unit, unit*0.25])
    color("RoyalBlue")
    cube_frame(7, 5, h=0.5);
