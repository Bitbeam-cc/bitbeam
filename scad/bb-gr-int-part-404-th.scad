// NAME: Internal Gear Thin Part 408
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>

module profile(size, h=1, angle=360){
    rotate_extrude(angle=angle, $fn=size*12)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit*2-0.5, 0], [unit*2,0.5],
            [unit*2, h*unit-0.5], [unit*2-0.5, h*unit], [0, h*unit]
        ]);
}

module gear_408() {
    difference(){
        profile(51, h=0.5, angle=45);

        translate([0, 0, -0.05])
        gear(number_of_teeth = 408,
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

        for (i=[2.25:2.25:44])
            rotate([0, 0, i])
            translate([unit*26.5, 0, unit*0.25])
            holes(1, h=0.5);

    }
}

color("SkyBlue")
    gear_408();

/*
use <bb-gr-8.scad>
use <bb-gr-24.scad>
use <bb-gr-40.scad>

%translate([0, -unit*25,  0])
    rotate([0, 0, 0])
    gear_8();

%translate([unit*24, 0 , 0])
    rotate([0, 0, 0])
    gear_24();

%translate([0, -unit*-23, 0])
    rotate([0, 0, 0])
    gear_40();
*/
