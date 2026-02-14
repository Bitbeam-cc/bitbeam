// NAME: Plate 26x26
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-12.5*unit, -12.5*unit, unit/4])
    color("green")
    difference(){
        cube_base(26, 26, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*25, 0])
            rotate([90, 0, 0])
            holes(24);

        for(x=[0, 1])
            translate([x*unit*25, 0, 0])
            rotate([90, 0, 90])
            holes(26);
    }
