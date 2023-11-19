// NAME: Gear 24 Thin with Plus Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_24() {
    difference(){
        gear(number_of_teeth = 24,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit*0.5-0.5,
            rim_thickness = unit*0.5-0.5,
            rim_width = 5,
            hub_thickness = unit*0.5-0.5,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.1,
            circles=0,
            twist=0);

        translate([0, 0, unit*((unit-0.5)/unit-0.5)/2])
            plus_hole((unit-0.5)/unit-0.5);

        for (i = [0:360/24:360])
            rotate([0, 0, i]){
                translate([unit*3.5/2, 0, 0])
                rotate([0, 45, 0])
                    cube(2, true);
                translate([unit*3.5/2, 0, unit*0.5-0.5])
                rotate([0, 45, 0])
                    cube(2, true);
            }
    }
}

color("SkyBlue")
    gear_24();
%translate([0, -unit*2, 0])
    rotate([0, 0, 360/8/2])
    gear_8();
%translate([unit*3, 0 , 0])
    rotate([0, 0, 360/24/2])
    gear_24();
