// NAME: Track Chain 1x3
// CATEGORY: Wheel
// LDRAW: 0

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/track-chain.scad>

module track(){
    difference(){
        union(){
            hull(){
                translate([1, 0, 0])
                    cube([4, unit*3, 1.6], true);
                translate([1, 0, 0.2])
                    cube([4, unit*1.5, 2], true);
            }

            hull(){
                translate([3, 0, 0])
                    cube([0.01, unit*1.5-0.4, 1.6], true);
                translate([shift+0.4, 0, 0])
                    cube([0.01, unit*1.5-0.4, 1.6], true);
            }

            translate([shift, 0, hole/2+0.8])
                rotate([90, -60, 0])
                socket();

            // hole for socket is one 12 mm -> (24 - 12) / 2 = 6
            for(y=[-1, 1])
                hull(){
                    translate([-shift, y*9, 4.7/2+1])
                        rotate([90, 0, 0])
                        cylinder(d=5, h=6, center=true);
                    translate([2.95, y*9, 0])
                        cube([0.1, 6, 1.6], true);
                    translate([-6, y*9, 0])
                        rotate([90, 0, 0])
                        cylinder(d=1.6, h=6, center=true, $fn=4);
                }
        }
        translate([-shift, 0, 4.7/2+1])
            rotate([90, 0, 0])
            cylinder(d=1.92, h=unit*4, center=true);
    }
}

color("#404040")
    track();
%translate([shift*2+0.4, 0, 5.2])
    rotate([0, -45, 0])
    track();
%translate([-shift*2, 0, 0])
    track();
