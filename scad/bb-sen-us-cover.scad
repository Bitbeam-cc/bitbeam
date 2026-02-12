// NAME: HC-S04 Ultrasound Sensor Box Cover
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <hc-s04.scad>

module rcw_us_cover(){
    difference(){
        union(){
            hull(){
                translate([0, 0, 2.5])
                    ecube([32, unit*3-2, 1], center=true);
                translate([0, 0, 7.5])
                    ecube([45.5, unit*3-2, 1], center=true);
                }

            for (x=[-1, 1])
                translate([x*unit*2+0., 0, 4])
                hull(){
                    for (y=[-1, 1])
                        translate([0, y*(unit+2.8), 0])
                        rotate([0, 90, 0])
                        cylinder(d=2.5, h=3.5, center=true);
                }
        }

        translate([0, 0, 4])
            ecube([46, 21, 6], center=true);

        translate([0, +unit+3, 5])
            cube([11, 3, 7], center=true);
        for (i=[-1, 1])
            translate([0, i*(unit+2-2), 7])
            cube([10, 4, 3], center=true);


        for(i=[-1, 1])
            translate([i*-13, 0, 6])
            cylinder(d=17, h=3, $fn=60);
    }

    for(x=[-1, 1]){
        for(y=[-1, 1]){
            translate([x*41/2, y*17.5/2, 6.5])
                cylinder(d=3.8, h=2, center=true);
        }
    }
}


color("YellowGreen")
    translate([0, 0, -2])
    rcw_us_cover();

%translate([0, 0, 2.6])
    hc_s04();
