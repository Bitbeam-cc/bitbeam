// NAME: Plate 25x25
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-12*unit, -12*unit, unit/2])
    color("green")
    difference(){
        cube_base(25, 25, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*25, 0])
            rotate([90, 0, 0])
            holes(23);

        for(x=[0, 1])
            translate([x*unit*24, 0, 0])
            rotate([90, 0, 90])
            holes(25);
    }
