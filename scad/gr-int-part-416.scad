// NAME: Internal Gear Part 416
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

module gear_416() {
    difference(){
        profile(52, angle=45);

        translate([0, 0, -0.05])
        gear(number_of_teeth = 416,
            circular_pitch=false,
            diametral_pitch=0.999,
            gear_thickness = unit*1.1,
            rim_thickness = unit*1.1,
            rim_width = 5,
            hub_thickness = unit*1.1,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0,
            circles=0,
            twist=0);

        for (i=[-0:11.25/2:45])
            rotate([0, 0, i])
            translate([unit*27, unit*-0.5, unit*0.5])
            rotate([0, 0, 90])
            holes(2);

    }
}

color("SkyBlue")
    gear_416();

/*
use <bb-ra-45.scad>
%rotate([0,  0, 0])
    curve(45);
*/

use <gr-8.scad>
use <gr-24.scad>
use <gr-40.scad>

%rotate([0, 0, 45/2])
    translate([unit*25.5, 0,  0])
    rotate([0, 0, 34])
    gear_8();

%translate([unit*24.5, 0 , 0])
    rotate([0, 0, 11])
    gear_24();

%rotate([0, 0, -45])
    translate([0, unit*23.5, 0])
    rotate([0, 0, 6.8])
    gear_40();
