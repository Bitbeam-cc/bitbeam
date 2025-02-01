// NAME: Rail Wheel 3
// CATEGORY: Train Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/rail.scad>

module rwheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                wheel_profile(size, h);
            cylinder(r=unit+0.1, h=unit, center=true, $fn=40);
        }

        cube(unit+0.1, true);
        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.8)])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }

        for (i = [0:3]){
            rotate([0, 0, i*90]){
                translate([unit, 0, 0])
                    holes(size/2.1);
            }
        }
    }
}

color("gray")
    rwheel(3);
