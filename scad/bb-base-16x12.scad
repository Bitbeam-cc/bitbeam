// NAME: Base plate 16x12
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-7.5, unit*-5.5, unit*0.5])
    color("green")
    difference(){
        cube_base(16, 12, x2=16, fill_holes=true);

        for(y=[0, 1])
            translate([0, y*unit*11, 0])
            rotate([90, 0, 0])
            holes(16);

        for(x=[0, 1])
            translate([x*unit*15, unit, 0])
            rotate([90, 0, 90])
            holes(10);
    }
