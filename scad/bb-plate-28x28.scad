// NAME: Plate 28x28
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-13.5, unit*-13.5, unit*0.5])
    color("green")
    difference(){
        cube_base(28, 28, fill_holes=true);

        for(y=[0, 1])
            translate([unit, y*unit*27, 0])
            rotate([90, 0, 0])
            holes(26);

        for(x=[0, 1])
            translate([x*unit*27, 0, 0])
            rotate([90, 0, 90])
            holes(28);
    }
