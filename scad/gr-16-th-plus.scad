// NAME: Gear 16 Thin with Plus Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_16() {
    difference(){
        rotate([0, 0, 360/16/4])
        gear(number_of_teeth = 16,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit*0.5-0.2,
            rim_thickness = unit*0.5-0.2,
            rim_width = 5,
            hub_thickness = unit*0.5-0.2,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.1,
            circles=0,
            twist=0);

        translate([0, 0, unit*((unit-0.2)/unit-0.5)/2])
            plus_hole((unit-0.2)/unit-0.5);

        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=32){
                translate([unit*2.25/2, m*(-unit*0.5+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        for (a = [0:90:270])
            rotate([0, 0, a+45])
            translate([-unit*0.6, 0, unit*0.5-0.2])
            sphere(d=2);
    }
}

color("SkyBlue")
    gear_16();
%translate([0, -unit*1.5, 0])
    gear_8();
%translate([unit*2, 0 , 0])
    gear_16();
