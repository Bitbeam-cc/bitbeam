// NAME: Gear 8
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_8() {
    difference(){
        gear(number_of_teeth = 8,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit-0.5,
            rim_thickness = unit-0.5,
            rim_width = 5,
            hub_thickness = unit-0.5,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.,
            circles=0,
            twist=0);

        *translate([0, 0, unit*0.5])
            shaft_hole(1);

        for (i = [0:360/8:360])
            rotate([0, 0, i]){
                translate([unit*1.5/2, 0, 0])
                rotate([0, 45, 0])
                    cube(2, true);
                translate([unit*1.5/2, 0, unit-0.5])
                rotate([0, 45, 0])
                    cube(2, true);
            }
    }
}

!color("SkyBlue")
    gear_8();
%translate([unit, 0 , 0])
    rotate([0, 0, 360/8/2])
    gear_8();
