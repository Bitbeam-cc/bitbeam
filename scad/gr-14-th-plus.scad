// NAME: Gear 14 Thin with Plus Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_14() {
    difference(){
        rotate([0, 0, 360/14/4])
        gear(number_of_teeth = 14,
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
                translate([unit, m*(-unit*0.5+0.2)-0.01])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        for (a = [0:360/3:359])
            rotate([0, 0, a])
            translate([-unit*0.5, 0, unit*0.5-0.2])
            sphere(d=2);
    }
}

color("DarkOrange")
    gear_14();
%translate([unit*1.75, 0 , 0])
    gear_14();
