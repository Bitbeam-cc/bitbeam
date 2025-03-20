// NAME: Gear 8 with Plus Shaft 0.5
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <gr-8.scad>
use <lib/shafts.scad>



module gear_8_shaft(){
    gear_8();
    translate([0, 0, unit*1.5/2])
        plus_shaft(1.4, 0);
}

color("SkyBlue")
    gear_8_shaft();
%translate([unit, 0 , 0])
    gear_8_shaft();
%translate([0, -unit , 0])
    gear_8();
