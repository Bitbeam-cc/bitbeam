// NAME: Base plate 7x5 Smooth
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3, unit*-2, unit*0.5])
    color("green")
    difference(){
        cube_base(7, 5, fill_holes=false);

        for(y=[0, 1])
            translate([0, y*unit*4, 0])
            rotate([90, 0, 0])
            holes(7);

        for(x=[0, 1])
            translate([x*unit*6, unit, 0])
            rotate([90, 0, 90])
            holes(3);
    }
