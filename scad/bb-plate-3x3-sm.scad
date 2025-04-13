// NAME: Plate 3x3 Smooth
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-unit, -1*unit, unit*0.5])
color("green")
difference(){
    cube_base(3, 3, fill_holes=false);

    for(y=[0, 1])
        translate([unit, y*unit*2, 0])
        rotate([90, 0, 0])
        holes(1);

    for(x=[0, 1])
        translate([x*unit*2, 0, 0])
        rotate([90, 0, 90])
        holes(3);
}
