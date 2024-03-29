// NAME: Plate 3x7
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-3*unit, -1*unit, unit/4])
color("green")
difference(){
    cube_base(7, 3, fill_holes=true);

    for(y=[0, 1])
        translate([unit, y*unit*2, 0])
        rotate([90, 0, 0])
        holes(5);

    for(x=[0, 1])
        translate([x*unit*6, 0, 0])
        rotate([90, 0, 90])
        holes(3);
}
