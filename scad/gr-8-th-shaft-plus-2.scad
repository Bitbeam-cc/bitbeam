// NAME: Gear 8 Thin with Plus Shaft 2
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <gr-8-th.scad>
use <lib/shafts.scad>

color("SkyBlue"){
    gear_8();
    translate([0, 0, unit*2.5/2])
        plus_shaft(2.4, 0);
}
%translate([unit, 0 , 0])
    gear_8();
