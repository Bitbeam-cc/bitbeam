// NAME: Plate 4x8 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3.5, unit*-1.5, unit*0.5])
    color("green")
        cube_base(8, 4, h=0.5, fill_holes=true);
