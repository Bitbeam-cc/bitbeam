// NAME: Terrain Wheel 9
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray"){
    wheel(9);
    for (a=[0:1.5:360])
        rotate([0, 0, a])
        translate([unit*4.46, 0, a % 4.5*1.5+1.7])
        hull(){
            cube([1, 2, 2.5], true);
            translate([1, 0, 0])
            cube([1, 1, 1.2], true);
        }
}
