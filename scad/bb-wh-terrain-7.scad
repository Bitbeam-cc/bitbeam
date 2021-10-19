// NAME: Terrain Wheel 7
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray"){
    wheel(7);
    for (a=[0:2:360])
        rotate([0, 0, a])
        translate([unit*3.46, 0, a % 3*2.3+1.7])
        hull(){
            cube([1, 2, 2.5], true);
            translate([1, 0, 0])
            cube([1, 1, 1.2], true);
        }
}
