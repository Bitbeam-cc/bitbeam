// NAME: Base plate 8x6
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-0.5, unit*-0.5, unit*0.5])
    color("green")
        cube_base(2, 2, x2=2, fill_holes=true);
