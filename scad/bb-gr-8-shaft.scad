// NAME: Gear 8 with Shaft
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <bb-gr-8.scad>
use <lib/shafts.scad>

module gear_8_shaft(){
    gear_8();
    translate([0, 0, unit*1.5/2])
        shaft(1.4);
}

!color("SkyBlue")
    gear_8_shaft();
%translate([unit, 0 , 0])
    rotate([0, 0, 360/8/2])
    gear_8();
