// NAME: Plate 4x5
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-2*unit, -1.5*unit, unit*0.5])
color("green")
difference(){
    cube_base(5, 4, fill_holes=true);

    for(y=[0, 1])
        translate([unit, y*unit*2, 0])
        rotate([90, 0, 0])
        holes(3);

    for(x=[0, 1])
        translate([x*unit*4, 0, 0])
        rotate([90, 0, 90])
        holes(4);
}
