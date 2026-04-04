// NAME: Plate 4x7 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3, unit*-1.5, unit*0.25])
    color("green")
        cube_base(7, 4, h=0.5, fill_holes=true);
