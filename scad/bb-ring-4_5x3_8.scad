// NAME: Ring for Gearbox Motor 5.5x3.8 Shaft
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>


color("LightSlateGray")
translate([0,0,(unit-0.5)/2])
    difference(){
        ecylinder(d=unit, h=unit-0.5, center=true);
        
        translate([0, 0, 0])
            rotate([0, 0, 90])
            shaft_hole(1);
    }