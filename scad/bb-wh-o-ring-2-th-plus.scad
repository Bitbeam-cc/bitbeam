// NAME: O-Ring Wheel 2 Thin Shaft Plus
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-15x2_5.scad>
use <lib/holes.scad>

module wheel(size, h=0.5-0.2/unit){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);
            translate([0, 0, -unit*0.25-0.1])
                cylinder(r=unit*0.75, h=unit*0.5-0.2, center=true, $fn=40);
        }

        translate([0, 0, -unit*0.25-0.1]){
            plus_hole(0.5-0.2/unit);
        }
    }
}

color("gray")
difference(){
    wheel(2);

    translate([0,0,unit*0.25-0.1])
        scale([1.01, 1.01, 1])
        o_ring_15();
}
