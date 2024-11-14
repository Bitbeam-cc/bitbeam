// NAME: Beam 3
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("Gold")
resize([60, 60, 60])
difference(){
    cube_arm(1);
    rotate([0, 90, 0])
        holes(1);

    translate([-3.6, -3.6, 3.6])
        rotate([-45,0, -45])
        cylinder(d=0.2, h=3, center=true);
}
