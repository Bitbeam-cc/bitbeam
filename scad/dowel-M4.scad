// NAME: Dowel M4
// CATEGORY: Support
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>


module dowel_m4(){
    difference(){
        union(){
            cylinder(d=4.6, h=unit, center=true);
            rotate([90, 0, 0])
                ecylinder(d=5, h=3.8, center=true);

            translate([0, 0, unit*0.17])
                cylinder(d1=4.6, d2=5, h=unit*0.33);
            translate([0, 0, -unit*0.5])
                cylinder(d1=5, d2=4.6, h=unit*0.33);
        }

        translate([0, 4.8/2+0.55, 0])
            cube([5, 2.1, unit*1.51], center=true);
        translate([0, -4.8/2-0.55, 0])
            cube([5, 2.1, unit*1.51], center=true);

        for(i=[0, 1])
            mirror([0, 0, i])
            translate([0, 0, unit*0.5-edge])
            cap();

        translate([0, 0, 0])
            cube([1.5, 4.7, 6], true);
        rotate([90, 0, 0])
            cylinder(d=3.5, h=4.7, center=true);
    }
}


translate([0, 0, unit*0.5])
    color("SlateGray")
    dowel_m4();
