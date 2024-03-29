// NAME: Plate 5x7 Smooth
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3, unit*-2, unit*0.5])
    color("green")
    difference(){
        cube_base(7, 5, fill_holes=false);

        for(y=[0, 1])
            translate([unit, y*unit*4, 0])
            rotate([90, 0, 0])
            holes(5);

        for(x=[0, 1])
            translate([x*unit*6, 0, 0])
            rotate([90, 0, 90])
            holes(5);
    }
