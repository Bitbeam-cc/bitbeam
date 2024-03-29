// NAME: Plate 12x16 Smooth Thin
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-7.5, unit*-5.5, unit*0.5])
    color("green")
    cube_base(16, 12, h=0.5, fill_holes=true);