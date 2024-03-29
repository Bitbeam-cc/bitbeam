// NAME: Plate 7x10 Smooth
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-4.5, unit*-3, unit*0.5])
    color("green")
    difference(){
        cube_base(10, 7, fill_holes=false);

        for(y=[0, 1])
            translate([unit, y*unit*6, 0])
            rotate([90, 0, 0])
            holes(8);

        for(x=[0, 1])
            translate([x*unit*9, 0, 0])
            rotate([90, 0, 90])
            holes(7);
    }
