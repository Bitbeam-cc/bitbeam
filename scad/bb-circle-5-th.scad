// NAME: Cirlce 5 plate Thin
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

color("green")
difference(){
    ecylinder(d=unit*5, h=unit*0.5);
    for (y=[-2:2])
        translate([-2*unit, y*unit, 0])
        holes(6);
}
