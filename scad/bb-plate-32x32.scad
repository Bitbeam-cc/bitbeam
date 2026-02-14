// NAME: Plate 32x32
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-15.5*unit, -15.5*unit, unit/4])
    color("green")
    difference(){
        cube_base(32, 32, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*31, 0])
            rotate([90, 0, 0])
            holes(30);

        for(x=[0, 1])
            translate([x*unit*31, 0, 0])
            rotate([90, 0, 90])
            holes(32);
    }
