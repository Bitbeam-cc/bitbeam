// NAME: Beam 3
// LDRAW: 1

include <scad/bitbeam-lib/bitbeam-lib.scad>

//color("#03783d")
//color("#008b45")
//color("#3e68b9")
//color("#00b75b")
//color("#f47f00")
//color("#dd0000")
color("#ff981a")
//color("lime")
resize([10, 10, 10])
difference(){
    cube_arm(1);
    rotate([0, 90, 0])
        holes(1);
}
