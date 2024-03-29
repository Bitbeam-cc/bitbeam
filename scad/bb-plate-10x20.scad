// NAME: Plate 10x20
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-9.5*unit, -4.5*unit, unit/4])
    color("green")
    difference(){
        cube_base(20, 10, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*9, 0])
            rotate([90, 0, 0])
            holes(18);

        for(x=[0, 1])
            translate([x*unit*19, 0, 0])
            rotate([90, 0, 90])
            holes(10);
    }
