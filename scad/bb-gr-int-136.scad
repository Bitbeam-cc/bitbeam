// NAME: Internal Gear 136
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>

module profile(size, h=1){
    rotate_extrude($fn=size*12)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit*1.5-0.5, 0], [unit*1.5,0.5],
            [unit*1.5, h*unit-0.5], [unit*1.5-0.5, h*unit], [0, h*unit]
        ]);
}


module gear_136() {
    difference(){
        profile(17);

        translate([0, 0, -0.05])
        gear(number_of_teeth = 136,
            circular_pitch=false,
            diametral_pitch=0.998,
            gear_thickness = unit*1.1,
            rim_thickness = unit*1.1,
            rim_width = 5,
            hub_thickness = unit*1.1,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0,
            circles=0,
            twist=0);

        for (i=[0:90:360])
            rotate([0, 0, i])
            translate([unit*9, -unit, unit*0.5])
            rotate([0, 0, 90])
            holes(3);

        for (x=[-1,1], y=[-1,1]) {
            translate([x*unit*8, y*unit*4, unit*0.5])
                holes(1);
            translate([x*unit*4, y*unit*8, unit*0.5])
                holes(1);
        }
    }
}

color("SkyBlue")
    gear_136();

/*
use <bb-gr-8.scad>
use <bb-gr-24.scad>
use <bb-gr-40.scad>
use <bb-gr-56.scad>

%translate([0, -unit*8,  0])
    rotate([0, 0, 0])
    gear_8();

%translate([unit*7, 0 , 0])
    rotate([0, 0, 0])
    gear_24();

%translate([0, unit*6, 0])
    rotate([0, 0, 0])
    gear_40();

%translate([-unit*5, 0, 0])
    rotate([0, 0, 0])
    gear_56();
*/