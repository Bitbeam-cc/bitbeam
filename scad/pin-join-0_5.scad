// NAME: Pin Join 0.5 x 0.5
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>


module pin(){
    difference(){
        union(){
            cylinder(d=4.6, h=unit, center=true);

            translate([0, 0, unit*0.17])
                cylinder(d1=4.6, d2=5, h=unit*0.33);
        }

        translate([0, 4.8/2+0.55, 0])
            cube([5, 2, unit*1.51], center=true);
        translate([0, -4.8/2-0.55, 0])
            cube([5, 2, unit*1.51], center=true);

        translate([0, 0, unit*0.46])
            cube([0.7, hole, unit*0.6], center=true);

        translate([0, 0, unit*0.5-edge])
            cap();
    }
}

color("#404040"){
    translate([0, 0, -unit*0.25])
        ecube([unit*2, unit, unit*0.5], true);

    for (i=[-1, 1])
        translate([unit*0.5*i, 0, 0])
        pin();
}
