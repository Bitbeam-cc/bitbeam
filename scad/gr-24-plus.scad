// NAME: Gear 24 with Plus Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_24() {
    difference(){
        rotate([0, 0, 360/24/4])
        gear(number_of_teeth = 24,
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

        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=48){
                translate([unit*3.25/2, m*(-unit+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        translate([0, 0, unit*((unit-0.2)/unit)*0.5])
            plus_hole((unit-0.2)/unit);

        for (a = [0:90:270])
            rotate([0, 0, a])
            translate([-unit, 0, unit*0.5])
            holes(1);

        for (a = [0:90:270])
            rotate([0, 0, a+45])
            translate([-unit*0.75, 0, unit-0.2])
            sphere(d=2);
    }
}

color("SkyBlue")
    gear_24();
%translate([0, -unit*2, 0])
    rotate([0, 0, 360/8/4])
    gear_8();
%translate([unit*3, 0 , 0])
    gear_24();
