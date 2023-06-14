// NAME: Base plate 12x8 Smooth
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-5.5, unit*-3.5, unit*0.5])
    color("green")
    difference(){
        cube_base(12, 8, x2=12, fill_holes=false);

        for(y=[0, 1])
            translate([0, y*unit*7, 0])
            rotate([90, 0, 0])
            holes(12);

        for(x=[0, 1])
            translate([x*unit*11, unit, 0])
            rotate([90, 0, 90])
            holes(6);
    }
