// NAME: Pin Join 1.5
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

module pin(size){
    difference(){
        union(){
            cylinder(d=3, h=unit*size-4.8, center=true);

            for (m = [0, 1])
                mirror([0, 0, m]){
                    translate([0, 0, unit*(size/2)-4.8/2])
                        sphere(d=4.8);
                }
        }

        translate([0, 4.8/2+1.1, -unit*0.251/2])
            cube([unit, 3, unit*(size+0.252)], center=true);
        translate([0, -4.8/2-1.1, -unit*0.251/2])
            cube([unit, 3, unit*(size+0.252)], center=true);
    }
}

pin(1.5);
