// NAME: Gear 40 Thin with Plus Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_40() {
    difference(){
        rotate([0, 0, 360/40/4])
        gear(number_of_teeth = 40,
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

       for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=80){
                translate([unit*5.25/2, m*(-unit*0.5+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        translate([0, 0, unit*0.25-0.1])
            plus_hole(0.5-0.2/unit);

       for (i = [-1:1]){
           skip = (i != 0) ? [] : [1];
            translate([-unit, unit*i, unit*0.5/2-0.1])
                holes(3, h=0.5-0.2/unit, skip=skip);
       }

       for (a = [0:90:270])
            rotate([0, 0, a])
            translate([-unit*1.75, 0, unit*0.5-0.2])
            sphere(d=2);
    }
}

color("SkyBlue")
    gear_40();

/*
use <gr-8.scad>
use <gr-24-th.scad>

%translate([unit*3, 0 , 0])
    rotate([0, 0, 360/8/2])
    gear_8();

%translate([0, unit*4 , 0])
    rotate([0, 0, 360/24/2])
    gear_24();

%translate([-unit*5, 0 , 0])
    gear_40();
*/
