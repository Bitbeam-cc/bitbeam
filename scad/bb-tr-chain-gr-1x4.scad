// NAME: Track Chain Grousers for 1x4
// CATEGORY: Wheel
// LDRAW: 0

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-tr-chain-1x4.scad>
use <lib/holes.scad>

$fn=40;

shift=12.6/2;       // track wheel X/6
// minimum wheel size 4 = maximum angle between chain pieces is 45

module pin(){
    difference(){
        union(){
            translate([0, 0, unit*0.25+0.5])
                cylinder(d=4.6, h=unit*0.5+1, center=true);

            translate([0, 0, unit*0.5+1-unit*0.33])
                cylinder(d1=4.6, d2=hole+0.2, h=unit*0.33);
        }

        translate([0, 4.8/2+0.55, unit*0.25+1])
            cube([5, 2, unit*0.6], center=true);
        translate([0, -4.8/2-0.55, unit*0.25+1])
            cube([5, 2, unit*0.6], center=true);

        translate([0, 0, unit*0.46])
            cube([0.7, hole, unit*0.6], center=true);

        translate([0, 0, unit*0.5+0.25])
            cap();
    }
}

module sock(){
    difference(){
        union(){
            translate([0.25, 0, 0.45])
                cube([12.5, unit*4, 1.1], true);

            for (i=[-5.0:2.1:6])
                hull(){
                translate([i, 0, -0.05])
                    cube([2.0, i < 5 ? unit*4 : unit*1.5-0.5, 0.1], true);
                translate([i, 0, -1.5])
                    cube([0.5, i < 5 ? unit*4: unit*1.5-0.5, 0.1], true);
            }
        }

        translate([-3.95, 0, -0.25])
            cube([4.2, unit*1.5, 3], true);
        for (y=[-1, 1])
        translate([5.5, y*11, -0.25])
            cube([2.2, 10.5, 3], true);
    }

    for (y = [-1, 1])
        translate([0, y*unit*1.5, 0])
        rotate([0, 0, 90])
            pin();
}

translate([0, 0, -1])
    sock();
translate([0, 0, 0.8])
    %track();
