// NAME: Gear 8 with Shaft 2
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <bb-gr-8.scad>
use <lib/shafts.scad>

!color("SkyBlue"){
    gear_8();
    translate([0, 0, unit])
        shaft(2);
}
%translate([unit, 0 , 0])
    rotate([0, 0, 360/8/2])
    gear_8();
