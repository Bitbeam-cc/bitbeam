// NAME: Beam Frame 3x3
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>


translate([4-1.5*unit, 4-1.5*unit, 4])
    color("RoyalBlue")
    difference(){
        cube_frame(3, 3);

        for(x=[0, 1])
            translate([x*unit*2, 0, 0])
            rotate([90, 0, 90])
            holes(3, skip=[1]);
    }
