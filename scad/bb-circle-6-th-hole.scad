// NAME: Cirlce 6 plate with hole Thin
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

color("green")
difference(){
    ecylinder(d=unit*6, h=unit*0.5);
    for (y=[-3:3])
        translate([-3*unit, y*unit, 0])
        holes(7);
    translate([0, 0, -0.05])
        hcylinder(d=unit*2+0.5, h=unit*0.5+0.1);
}
