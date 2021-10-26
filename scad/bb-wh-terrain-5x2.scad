// NAME: Terrain Wheel 5x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

color("gray"){
    large_wheel(5,2);
    for (a=[0:360])
        rotate([0, 0, a])
        translate([unit*2.46, 0, a % 4.5*1.57*2+1.7])
        hull(){
            cube([1, 2, 2.5], true);
            translate([1, 0, 0])
            cube([1, 1, 1.2], true);
        }
}
