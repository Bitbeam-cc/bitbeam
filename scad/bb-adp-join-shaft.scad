// NAME: Adapter Join for shaft 4.5x3.8
// CATEGORY: Adapter Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

color("LightSlateGray")
translate([0,0,unit])
    difference(){
        cylinder(d=unit*1.5, h=unit*2, center=true);

        rotate([0, 0, 90])
            shaft_hole(2);

        rotate([0, 180, 90])
            shaft_hole(2);

        for (i=[-1, 1])
            translate([0, 0, i*unit/2])
            rotate([0, 90, 0])
            cylinder(d=2.8, h=16.1, center=true);
    }
