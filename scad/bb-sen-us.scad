// NAME: HC-S04 Ultrasound Sensor Box
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <hc-s04.scad>
use <bb-sen-us-cover.scad>

color("YellowGreen"){

    difference(){
        for(x=[-1, 1]){
            for(y=[-1, 1]){
                translate([x*43/2, y*17.5/2, -4/2])
                    cube([4, 4, 4], center=true);
            }
        }
        for(x=[-1, 1]){
            for(y=[-1, 1]){
                translate([x*43/2, y*17.5/2, -2.3/2])
                    cylinder(d=1.5, h=3.1, center=true);
            }
        }
    }

    difference(){
        union(){
            ecube([unit*6, unit*3, unit], center=true);
            translate([0, -unit, 0])
                ecube([unit*8, unit, unit], center=true);
            translate([0, unit, 0])
                ecube([unit*8, unit, unit], center=true);
            translate([-unit, -unit*1.5, 0])
                ecube([unit, unit*2, unit], center=true);
            translate([unit, -unit*1.5, 0])
                ecube([unit, unit*2, unit], center=true);
        }


        translate([0, 0, 0.76])
            cube([46.01, unit*3-1.5, unit-1.5], center=true);

        translate([0, unit+0.01, 0])
            cube([12, 8, unit+0.1], center=true);

        translate([-unit, -unit*2, 0])
            holes(3, skip=[1]);
        for (x=[-1, 1])
            translate([x*unit, -unit*2, 0])
                rotate([0, 90, 0])
                holes(1);

        for (x=[-1, 1]){
            translate([x*unit*3.5, -unit, 0])
                rotate([0, 0, 90])
                holes(3, skip=[1]);

            for (y=[-1, 1])
                translate([x*unit*3.5, y*unit, 0])
                    rotate([90, 0, 0])
                    holes(1);
        }

        for (x=[-1, 1])
            translate([x*unit*2, 0, 0])
            hull(){
                for (y=[-1, 1])
                    translate([0, y*(unit+3), 0])
                    rotate([0, 90, 0])
                    cylinder(d=3, h=4, center=true);
            }
    }

}

%hc_s04();

translate([0, 0, -4])
    %rcw_us_cover();
