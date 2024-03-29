// NAME: Plate 7x14
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-6.5, unit*-3, unit*0.5])
    color("green")
    difference(){
        cube_base(14, 7, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*6, 0])
            rotate([90, 0, 0])
            holes(12);

        for(x=[0, 1])
            translate([x*unit*13, 0, 0])
            rotate([90, 0, 90])
            holes(7);
    }
