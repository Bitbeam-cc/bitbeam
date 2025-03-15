// NAME: Gear 20 with Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_20() {
    difference(){
        rotate([0, 0, 360/20/4])
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

        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=40){
                translate([unit*2.75/2, m*(-unit+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        translate([0, 0, unit*((unit-0.2)/unit)*0.5])
            shaft_hole((unit-0.2)/unit);

        for (y = [-1, 1])
            translate([-unit*0.5, y*unit*0.5, unit*0.5])
            holes(2);

        for (a = [0:90:270])
            rotate([0, 0, a])
            translate([-unit*0.8, 0, unit-0.2])
            sphere(d=2);
    }
}

color("SkyBlue")
    gear_20();
%translate([0, -unit*1.75, 0])
    gear_8();
%translate([unit*2.5, 0 , 0])
    gear_20();
