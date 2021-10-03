// NAME: Shaft 3 with plus reduction
// CATEGORY: Support
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

module plus_shaft(h){
    cube([4.9, 2, unit*h], center=true);
    cube([2, 4.9, unit*h], center=true);
}

color("#404040")
difference(){
    union(){
        cylinder(d=4.5, h=unit*3, center=true);
        translate([0, 0, -unit*2])
            cylinder(d=unit, h=unit*0.501);
    }

    translate([0, 4.8/2+1, -unit*0.25])
        cube([unit, 3, unit*3.51], center=true);
    translate([0, -4.8/2-1, -unit*0.25])
        cube([unit, 3, unit*3.51], center=true);
    translate([0, 0, -unit*1.751])
        rotate([0, 0, 45])
        plus_shaft(0.5);
    translate([0, 0, -unit*1.751])
        cube([2, 5, unit*0.5], center=true);
}
