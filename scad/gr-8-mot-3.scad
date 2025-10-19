// NAME: Gear 8
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_8() {
    difference(){
        rotate([0, 0, 360/8/4])
        gear(number_of_teeth = 8,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit-0.2,
            rim_thickness = unit-0.2,
            rim_width = 5,
            hub_thickness = unit-0.2,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.,
            circles=0,
            twist=0);


        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=16){
                translate([unit*1.25/2, m*(-unit+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }
    }
}

color("SkyBlue")
    difference(){
        gear_8();
        translate([0, 0, unit*0.5-0.1])
            cylinder(d=3.2, h=unit, center=true);
    }
%translate([unit, 0 , 0])
    gear_8();
