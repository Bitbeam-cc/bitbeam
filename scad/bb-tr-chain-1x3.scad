// NAME: Track Chain 1x3
// CATEGORY: Wheel
// LDRAW: 0

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/track-chain.scad>


$fn=40;

shift=12.6/2;       // track wheel X/6
// minimum wheel size 4 = maximum angle between chain pieces is 45


module track(){
    hull(){
        translate([unit*0.25,0,0])
            cube([unit/2, unit*3, 1.6], true);
        translate([unit/6,0, 3.155])
            cube([unit/3, unit*1.5-0.5, 0.1], true);
    }

    hull(){
        translate([4, 0, 0])
            cube([0.01, unit*1.5-0.5, 1.6], true);
        translate([shift, 0, 0])
            cube([0.01, unit*1.5-0.5, 1.6], true);
    }

    translate([shift, 0, hole/2+0.8])
        rotate([90, -60, 0])
        socket();

    translate([-shift, 0, 4.7/2+1])
        rotate([90, 0, 0])
        cylinder(d=4.3, h=unit*3, center=true);

    // hole for socket is one 12 mm -> (24 - 12) / 2 = 6
    for(y=[-1, 1])
        hull(){
            translate([-shift, y*9, 4.7/2+1])
                rotate([90, 0, 0])
                cylinder(d=4.3, h=6, center=true);
            translate([3.95, y*9, 0])
                cube([0.1, 6, 1.6], true);
            translate([-6, y*9, 0])
                rotate([90, 0, 0])
                cylinder(d=1.6, h=6, center=true, $fn=4);
        }
}

color("#404040")
    track();
%translate([shift*2+0.4, 0, 5.2])
    rotate([0, -45, 0])
    track();
%translate([-shift*2, 0, 0])
    track();
