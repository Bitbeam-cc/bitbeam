// NAME: Gear 8 with Plus Shaft 2
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <gr-8.scad>
use <lib/shafts.scad>

color("SkyBlue"){
    gear_8();
    translate([0, 0, unit*3/2])
        plus_shaft(2.9, 0);
}
%translate([unit, 0 , 0])
    gear_8();
