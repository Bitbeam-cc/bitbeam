// NAME: Pin 2.5
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

color("#404040")
difference(){
    union(){
        cylinder(d=4.6, h=unit*2.5, center=true);

        translate([0, 0, unit*0.75])
            cylinder(d1=4.6, d2=5, h=unit/2);
        translate([0, 0, -unit*1.25])
            cylinder(d1=5, d2=4.6, h=unit/2);
    }

    translate([0, 4.8/2+0.5, 0])
        cube([5, 2, unit*2.51], center=true);
    translate([0, -4.8/2-0.5, 0])
        cube([5, 2, unit*3.51], center=true);

    translate([0, 0, unit*0.96])
        cube([0.7, hole, unit*0.6], center=true);
    translate([0, 0, -unit*0.96])
        cube([0.7, hole, unit*0.6], center=true);

    for(i=[0, 1])
        mirror([0, 0, i])
        translate([0, 0, unit*1.25-edge])
        cap();
}
