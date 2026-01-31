// NAME: Gear 8 with Shaft 2.5
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <gr-8.scad>
use <lib/shafts.scad>

color("SkyBlue"){
    gear_8();
    translate([0, 0, unit*3.5/2])
        shaft(3.4, 0);
}
%translate([unit, 0 , 0])
    gear_8();
