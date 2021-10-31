// NAME: Shaft 5
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>

color("#404040")
difference(){
    cylinder(d=4.5, h=unit*5, center=true);

    translate([0, 4.8/2+1, 0])
        cube([unit, 3, unit*5+0.1], center=true);
    translate([0, -4.8/2-1, 0])
        cube([unit, 3, unit*5+0.1], center=true);
}
