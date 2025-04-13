// NAME: Plate 3x12
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([-5.5*unit, -1*unit, unit*0.5])
color("green")
difference(){
    cube_base(12, 3, fill_holes=true);

    for(y=[0, 1])
        translate([unit, y*unit*2, 0])
        rotate([90, 0, 0])
        holes(10);

    for(x=[0, 1])
        translate([x*unit*11, 0, 0])
        rotate([90, 0, 90])
        holes(3);
}
