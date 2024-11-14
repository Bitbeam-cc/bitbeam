// NAME: Pin 1
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

module pin1()
difference(){
    union(){
        cylinder(d=4.6, h=unit, center=true);

        translate([0, 0, unit*0.17])
            cylinder(d1=4.6, d2=5, h=unit*0.33);
        translate([0, 0, -unit*0.5])
            cylinder(d1=5, d2=4.6, h=unit*0.33);
    }

    translate([0, 4.8/2+0.55, 0])
        cube([5, 2.1, unit*1.51], center=true);
    translate([0, -4.8/2-0.55, 0])
        cube([5, 2.1, unit*1.51], center=true);

    translate([0, 0, unit*0.46])
        cube([0.7, hole, unit*0.6], center=true);
    translate([0, 0, -unit*0.46])
        cube([0.7, hole, unit*0.6], center=true);

    for(i=[0, 1])
        mirror([0, 0, i])
        translate([0, 0, unit*0.5-edge])
        cap();
}

color("#404040")
pin1();
