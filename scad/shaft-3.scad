// NAME: Shaft 3
// COLOR: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>

color("#404040")
difference(){
    union(){
        cylinder(d=4.5, h=unit*3, center=true);
        translate([0, 0, -unit*1.75])
            cylinder(d=unit, h=unit*0.251);
    }

    translate([0, 4.8/2+1, -unit*0.25/2])
        cube([unit, 3, unit*3.251], center=true);
    translate([0, -4.8/2-1, -unit*0.25/2])
        cube([unit, 3, unit*3.251], center=true);
}
