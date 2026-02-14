// NAME: Plate 37x37
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-18*unit, -18*unit, unit/4])
    color("green")
    difference(){
        cube_base(37, 37, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*36, 0])
            rotate([90, 0, 0])
            holes(35);

        for(x=[0, 1])
            translate([x*unit*36, 0, 0])
            rotate([90, 0, 90])
            holes(37);
    }
