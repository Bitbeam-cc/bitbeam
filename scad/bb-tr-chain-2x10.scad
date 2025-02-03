// NAME: Track Chain 2x10
// CATEGORY: Wheel
// LDRAW: 0

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/track-chain.scad>

$fn=40;

shift=12.6/2;       // track wheel X/6
// minimum wheel size 4 = maximum angle between chain pieces is 45

module track(){
    difference(){
        union(){
            hull(){
                translate([1, 0, 0])
                    cube([4, unit*7, 1.6], true);
                translate([1, 0, 0.2])
                    cube([4, unit*3.5, 2], true);
            }

            difference(){
                hull(){
                    translate([3, 0, 0])
                        cube([0.01, unit*3.5-0.4, 1.6], true);
                    translate([shift, 0, 0])
                        cube([0.01, unit*3.5-0.4, 1.6], true);
                }
                translate([shift+2, 0, 0])
                    cube([10, 4.4, 5], true);
            }

            translate([shift, 0, hole/2+0.8])
                rotate([90, -60, 0])
                    socket2();

            // hole for sockets are 28 (80 - 28) / 2 = 26
            for(y=[-1, 1]){
                hull(){
                    hull(){
                        translate([-shift, y*17, 4.7/2+1])
                            rotate([90, 0, 0])
                            cylinder(d=5, h=6, center=true);
                        translate([2.95, y*21, 0])
                            cube([0.1, 14, 1.6], true);
                        translate([-6, y*21, 0])
                            rotate([90, 0, 0])
                            cylinder(d=1.6, h=14, center=true, $fn=4);
                    }
                }

                hull(){
                    translate([2.95, y*32, 0])
                        cube([0.1, unit*2, 1.6], true);
                    translate([-6, y*32, 0])
                        rotate([90, 0, 0])
                        cylinder(d=1.6, h=unit*2, center=true, $fn=4);
                }
            }

            hull(){
                translate([-shift, 0, 4.7/2+1])
                    rotate([90, 0, 0])
                    cylinder(d=4.1, h=3.5, center=true);
                translate([2.01, 0, 0.8])
                    cube([0.1, 3.5, 3.2], true);
                translate([-6, 0, 0])
                    rotate([90, 0, 0])
                    cylinder(d=1.6, h=3.5, center=true, $fn=4);
            }
        }

        translate([-shift, 0, 4.7/2+1])
            rotate([90, 0, 0])
            cylinder(d=1.92, h=unit*6.5, center=true);

        for (y = [-1, 1]){
            translate([-1, y*unit*2.5, unit*0.5/2-1]){
                holes(1, h=0.5);
                cylinder(d=4.8, h=unit, center=true);
            }
            translate([-1, y*unit*3.5, unit*0.5/2-1]){
                holes(1, h=0.5);
                cylinder(d=4.8, h=unit, center=true);
            }
            translate([-1, y*unit*4.5, 0])
                cylinder(d=hole, h=1.7, center=true);
        }
    }
}

color("#404040")
    track();
%translate([shift*2+0.4, 0, 5.2])
    rotate([0, -45, 0])
    track();
%translate([-shift*2, 0, 0])
    track();
