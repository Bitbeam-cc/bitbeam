// NAME: Plate 4x7
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([unit*-3, unit*-1.5, unit*0.5])
    color("green")
    difference(){
        cube_base(7, 4, fill_holes=true);

    for(y=[0, 1])
        translate([unit, y*unit*2, 0])
        rotate([90, 0, 0])
        holes(5);

    for(x=[0, 1])
        translate([x*unit*6, 0, 0])
        rotate([90, 0, 90])
        holes(4);
}
