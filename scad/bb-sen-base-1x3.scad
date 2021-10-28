// NAME: Sensor base 1x3
// CATEGORY: Electric
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue") {
    difference(){
        ecube([unit*3, unit*3, unit*0.5], true);

        translate([-unit, 0, 0])
            holes(3, h=0.5);
    }

    for (y = [-1, 1])
    difference(){
        translate([0, y*unit*0.75, unit*0.625])
            ecube([unit*3, unit*0.5, unit*1.25], true);
        translate([-unit, y*unit*0.75, unit*0.75])
            rotate([90, 0, 0])
            holes(3, h=0.5);

    }
}
