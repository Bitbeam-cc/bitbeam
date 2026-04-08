// NAME: Li-Pol Cube Battery
// CATEGORY: Electric
// COLOR: 493

include <bitbeam-lib/bitbeam-lib.scad>
edge=3;

color("silver")
    translate([0, 0, 5])
    ecube([50, 34, 10], center=true);
