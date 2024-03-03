// NAME: Rail Wheel 2 Shaft
// CATEGORY: Train Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>
use <lib/rail.scad>

module rwheel(size, h=1){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                wheel_profile(size, h);
            cylinder(r=unit*.75, h=unit, center=true, $fn=40);
        }

        
        shaft_hole(1);
    
        rotate([0, 90, 90])
            cylinder(d=2.8, h=size*unit+0.2, center=true);
        
    }
}

color("gray")
    rwheel(2);