// NAME: Terrain Wheel 9x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray"){
    large_wheel(9);
    for (a=[0:0.8:360])
        rotate([0, 0, a])
        translate([unit*4.46, 0, a % 4*3.92+1.7])
        hull(){
            cube([1, 2, 2.5], true);
            translate([1, 0, 0])
            cube([1, 1, 1.2], true);
        }
}
