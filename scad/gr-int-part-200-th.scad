// NAME: Internal Gear Thin Part 200
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

module gear_200() {
    difference(){
        profile(25, h=0.5, angle=90);

        translate([0, 0, -0.05])
        gear(number_of_teeth = 200,
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

        for (i=[4.5:4.5:89])
            rotate([0, 0, i])
            translate([unit*13.5, 0, unit*0.5])
                holes(1);

    }
}

color("SkyBlue")
    gear_200();

/*
use <gr-8.scad>
use <gr-24.scad>
use <gr-40.scad>

%translate([0, -unit*12,  0])
    rotate([0, 0, 0])
    gear_8();

%translate([unit*11, 0 , 0])
    rotate([0, 0, 0])
    gear_24();

%translate([0, -unit*-10, 0])
    rotate([0, 0, 0])
    gear_40();
*/
