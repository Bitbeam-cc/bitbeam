// NAME: RCW 001 Ultrasound Sensor Box Cover
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <rcw-0001.scad>


module rcw_0001_cover(){
    difference(){
        union(){
            hull(){
                translate([0, 0, 2.5])
                    ecube([23, unit*3-3.2, 1], center=true);
                translate([0, 0, 7.5])
                    ecube([31.7, unit*3-3.2, 1], center=true);
                }

            for (x=[-1, 1])
                translate([x*unit*1.25, 0, 4])
                hull(){
                    for (y=[-1, 1])
                        translate([0, y*(unit+2.8), 0])
                        rotate([0, 90, 0])
                        cylinder(d=2.5, h=3.5, center=true);
                }
        }

        hull(){
            translate([0, 0, 6.5])
                ecube([32, unit*3-7, 1], center=true);
            translate([0, 0, 0])
                ecube([32, unit*3-4, 1], center=true);
        }

        translate([0, unit+2, 3])
            cube([12, 2.5, 5], center=true);
        *translate([0, unit+2-2, 7])
            cube([11, 3, 3], center=true);


        for(i=[-1, 1])
            translate([i*-18.5/2, 0, 6])
            cylinder(d=14, h=3, $fn=60);
    }

    for(x=[-1, 1]){
        for(y=[-1, 1]){
            translate([x*28/2, y*13.5/2, 6.5])
                cylinder(d=3, h=2, center=true);
        }
    }
}


color("YellowGreen")
    translate([0, 0, -2])
    rcw_0001_cover();

%translate([0, 0, 2.6])
    rwc_0001();
