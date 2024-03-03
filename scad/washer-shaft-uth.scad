// NAME: Washer Shaft Ultra Thin
// COLOR: 80
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>

module washer_shaft(h){
    difference(){
        cylinder(d=unit, h=unit*h, center=true, $fn=30);
        cylinder(d=hole, h=unit*h+0.1, center=true);
    }
}

color("silver")
    washer_shaft(0.25-0.4/unit);
