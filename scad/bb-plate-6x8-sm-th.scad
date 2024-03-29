// NAME: Plate 6x8 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3.5, unit*-2.5, unit*0.5])
    color("green")
        cube_base(8, 6, h=0.5, fill_holes=false);
