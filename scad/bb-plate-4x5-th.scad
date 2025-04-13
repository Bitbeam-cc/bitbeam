// NAME: Plate 4x5 Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-2, unit*-1.5, unit*0.25])
    color("green")
        cube_base(5, 4, h=0.5, fill_holes=true);
