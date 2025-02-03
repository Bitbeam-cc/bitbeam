// NAME: Track Chain 1x4
// CATEGORY: Wheel
// LDRAW: 0

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/track-chain.scad>

module track(){
    difference(){
        union(){
            hull(){
                translate([1,0,0])
                    cube([4, unit*4, 1.6], true);
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

            // hole for socket is one 12 mm -> (32 - 12) / 2 = 10
            for(y=[-1, 1])
                hull(){
                    translate([-shift, y*9, 4.7/2+1])
                        rotate([90, 0, 0])
                        cylinder(d=5, h=6, center=true);
                    translate([2.95, y*11, 0])
                        cube([0.1, 10, 1.6], true);
                    translate([-6, y*11, 0])
                        rotate([90, 0, 0])
                        cylinder(d=1.6, h=10, center=true, $fn=4);
                }

        }

        translate([-shift, 0, 4.7/2+1])
            rotate([90, 0, 0])
            cylinder(d=1.92, h=unit*4, center=true);

        for (y = [-1, 1])
            translate([-1, y*unit*1.5, unit*0.5/2-1]){
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
