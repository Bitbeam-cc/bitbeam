// NAME: Pin 1.5
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>

color("#404040")
difference(){
    union(){
        cylinder(d=4.6, h=unit*0.51, center=true);

        translate([0, 0, unit*0.25])
            cylinder(d1=4.6, d2=4.8, h=unit/2);
        translate([0, 0, -unit*0.75])
            cylinder(d1=4.8, d2=4.6, h=unit/2);
    }

    translate([0, 4.8/2+0.5, 0])
        cube([5, 2, unit*1.51], center=true);
    translate([0, -4.8/2-0.5, 0])
        cube([5, 2, unit*1.51], center=true);

    translate([0, 0, unit*0.46])
        cube([0.5, hole, unit*0.6], center=true);
    translate([0, 0, -unit*0.46])
        cube([0.5, hole, unit*0.6], center=true);
}
