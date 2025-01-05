// NAME: Gear 20 with Plus Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_20() {
    difference(){
        gear(number_of_teeth = 20,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit-0.2,
            rim_thickness = unit-0.2,
            rim_width = 5,
            hub_thickness = unit-0.2,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.1,
            circles=0,
            twist=0);

        for (i = [0:360/20:360])
            rotate([0, 0, i]){
                translate([unit*3/2, 0, 0])
                rotate([0, 45, 0])
                    cube(2, true);
                translate([unit*3/2, 0, unit-0.2])
                rotate([0, 45, 0])
                    cube(2, true);
            }

        translate([0, 0, unit*((unit-0.2)/unit)*0.5])
            plus_hole((unit-0.2)/unit);

        for (y = [-1, 1])
            translate([-unit*0.5, y*unit*0.5, unit*0.5])
            holes(2);
    }
}

color("SkyBlue")
    gear_20();
%translate([0, -unit*1.75, 0])
    rotate([0, 0, 360/8/2])
    gear_8();
%translate([unit*2.5, 0 , 0])
    rotate([0, 0, 360/24/2])
    gear_20();
