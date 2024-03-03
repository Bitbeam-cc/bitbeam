// NAME: Gear 16 with Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_16() {
    difference(){
        gear(number_of_teeth = 16,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit-0.2,
            rim_thickness = unit-0.2,
            rim_width = 2,
            hub_thickness = unit-0.2,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.1,
            circles=0,
            twist=0);

        for (i = [0:360/16:360])
            rotate([0, 0, i]){
                translate([unit*2.5/2, 0, 0])
                rotate([0, 45, 0])
                    cube(2, true);
                translate([unit*2.5/2, 0, unit-0.2])
                rotate([0, 45, 0])
                    cube(2, true);
            }

        translate([0, 0, unit*((unit-0.2)/unit)*0.5])
            shaft_hole((unit-0.2)/unit);
    }
}

color("SkyBlue")
    gear_16();
%translate([0, -unit*1.5, 0])
    rotate([0, 0, 360/8/2])
    gear_8();
%translate([unit*2, 0 , 0])
    rotate([0, 0, 360/16/2])
    gear_16();
