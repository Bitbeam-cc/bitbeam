// NAME: Base plate 8x6 Smooth
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3.5, unit*-2.5, unit*0.5])
    color("green")
    difference(){
        cube_base(8, 6, x2=8, fill_holes=false);

        for(y=[0, 1])
            translate([0, y*unit*5, 0])
            rotate([90, 0, 0])
            holes(8);

        for(x=[0, 1])
            translate([x*unit*7, unit, 0])
            rotate([90, 0, 90])
            holes(4);
    }
