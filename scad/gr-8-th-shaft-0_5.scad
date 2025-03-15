// NAME: Gear 8 Thin with Shaft 0.5
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <gr-8-th.scad>
use <lib/shafts.scad>

module gear_8_shaft(){
    gear_8();
    translate([0, 0, unit/2])
        shaft(0.9, 0);
}

color("SkyBlue")
    gear_8_shaft();
%translate([unit, 0 , 0])
    gear_8();
