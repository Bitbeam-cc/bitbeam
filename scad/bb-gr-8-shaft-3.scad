// NAME: Gear 8 with Shaft
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <bb-gr-8.scad>


module shaft(h=1){
    difference(){
        cylinder(d=4.5, h=unit*h, center=true);

        translate([0, 4.8/2+1, 0])
            cube([unit, 3, unit*h+0.251], center=true);
        translate([0, -4.8/2-1, 0])
            cube([unit, 3, unit*h+0.251], center=true);
    }
}

!color("SkyBlue"){
    gear_8();
    translate([0, 0, unit*3/2])
        shaft(3);
}
%translate([unit, 0 , 0])
    rotate([0, 0, 360/8/2])
    gear_8();
