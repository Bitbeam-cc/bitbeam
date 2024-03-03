// NAME: O-Ring Wheel 2 Shaft Plus
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <o-ring-15x2_5.scad>
use <lib/holes.scad>

module wheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);
            translate([0, 0, -0.25])
                cylinder(r=unit*0.75, h=unit-0.5, center=true, $fn=40);
        }

        translate([0, 0, -0.25]){
            plus_hole(1-0.5/unit);
            
            rotate([0, 90, 90])
                cylinder(d=2.8, h=size*unit+0.2, center=true);
        }
    }
}

color("gray")
difference(){
    wheel(2);
    
    for(i=[-1, 0, 1])
    translate([0,0,unit*0.5-i*2.5-0.25])
        scale([1.02, 1.02, 1])
        o_ring_15();
}
