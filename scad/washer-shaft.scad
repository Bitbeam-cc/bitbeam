// NAME: Washer Shaft
// COLOR: 80
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>

module washer_shaft(h){
    difference(){
        cylinder(d=8, h=unit*h-0.2, center=true, $fn=30);
        cylinder(d=hole, h=unit*h, center=true);
    }
}

color("silver")
    washer_shaft(1);
