// NAME: Base plate 10x5 Smooth
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-4.5, unit*-2, unit*0.5])
    color("green")
    difference(){
        cube_base(10, 5, x2=10, fill_holes=false);

        for(y=[0, 1])
            translate([0, y*unit*4, 0])
            rotate([90, 0, 0])
            holes(11);

        for(x=[0, 1])
            translate([x*unit*9, 0, 0])
            rotate([90, 0, 90])
            holes(5);
    }
