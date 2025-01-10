// NAME: Washer Shaft Ultra Thin
// COLOR: 80
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

module washer_shaft(h){
    difference(){
        ecylinder(d=unit, h=unit*h-0.2, center=true, $fn=30);
        shaft_hole((unit*h-0.2)/unit);
    }
}

color("silver")
    translate([0,0,(unit*0.25-0.2)/2])
    washer_shaft(0.25);
