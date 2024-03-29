// NAME: Plate 6x8
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3.5, unit*-2.5, unit*0.5])
    color("green")
    difference(){
        cube_base(8, 6, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*5, 0])
            rotate([90, 0, 0])
            holes(6);

        for(x=[0, 1])
            translate([x*unit*7, 0, 0])
            rotate([90, 0, 90])
            holes(6);
    }
