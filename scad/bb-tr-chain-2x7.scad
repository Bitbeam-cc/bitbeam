// NAME: Track Chain 2x5
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
                translate([unit*0.25,0,0])
                    cube([unit/2, unit*7, 1.6], true);
                translate([unit/6,0, 3.155])
                    cube([unit/3, unit*3.5-0.5, 0.1], true);
            }

            difference(){
                hull(){
                    translate([4, 0, 0])
                        cube([0.01, unit*3.5-0.5, 1.6], true);
                    translate([shift, 0, 0])
                        cube([0.01, unit*3.5-0.5, 1.6], true);
                }
                translate([shift+3, 0, 0])
                    cube([10, 4, 5], true);
            }

            translate([shift, 0, hole/2+0.8])
                rotate([90, -60, 0])
                socket2();

            translate([-shift, 0, 4.7/2+1])
                rotate([90, 0, 0])
                cylinder(d=4.3, h=unit*5, center=true);

            // hole for sockets are 28 (56 - 28) / 2 = 14
            for(y=[-1, 1])
                hull(){
                    translate([-shift, y*17, 4.7/2+1])
                        rotate([90, 0, 0])
                        cylinder(d=4.3, h=6, center=true);
                    translate([3.95, y*21, 0])
                        cube([0.1, 14, 1.6], true);
                    translate([-6, y*21, 0])
                        rotate([90, 0, 0])
                        cylinder(d=1.6, h=14, center=true, $fn=4);
                }

            hull(){
                translate([-shift, 0, 4.7/2+1])
                    rotate([90, 0, 0])
                    cylinder(d=4.3, h=3.5, center=true);
                translate([2.01, 0, 0.8])
                    cube([0.1, 3.5, 3.2], true);
                translate([-6, 0, 0])
                    rotate([90, 0, 0])
                    cylinder(d=1.6, h=3.5, center=true, $fn=4);
            }
        }

        for (y = [-1, 1])
            translate([0, y*unit*2.5, unit*0.5/2-1]){
                holes(1, h=0.5);
                cylinder(d=4.8, h=unit, center=true);
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
