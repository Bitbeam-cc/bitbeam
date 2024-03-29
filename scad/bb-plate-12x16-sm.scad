// NAME: Plate 12x16 Smooth
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-7.5, unit*-5.5, unit*0.5])
    color("green")
    difference(){
        cube_base(16, 12, x2=16, fill_holes=false);

        for(y=[0, 1])
            translate([unit, y*unit*11, 0])
            rotate([90, 0, 0])
            holes(14);

        for(x=[0, 1])
            translate([x*unit*15, 0, 0])
            rotate([90, 0, 90])
            holes(12);
    }
