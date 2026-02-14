// NAME: Plate 22x22
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-10.5*unit, -10.5*unit, unit/4])
    color("green")
    difference(){
        cube_base(22, 22, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*21, 0])
            rotate([90, 0, 0])
            holes(20);

        for(x=[0, 1])
            translate([x*unit*21, 0, 0])
            rotate([90, 0, 90])
            holes(22);
    }
