// NAME: Internal Gear 200
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
        profile(25);

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

        for (i=[0:45:360])
            rotate([0, 0, i])
            translate([unit*13.5, unit*-0.5, unit*0.5])
            rotate([0, 0, 90])
            holes(2);

        for (x=[-1,1], y=[-1,1]) {
            translate([x*unit*12.5, y*unit*4.5, unit*0.5])
                holes(1);
            translate([x*unit*4.5, y*unit*12.5, unit*0.5])
                holes(1);
            translate([x*unit*11.5, y*unit*6.5, unit*0.5])
                holes(1);
            translate([x*unit*6.5, y*unit*11.5, unit*0.5])
                holes(1);
            translate([x*unit*10.5, y*unit*8.5, unit*0.5])
                holes(1);
            translate([x*unit*8.5, y*unit*10.5, unit*0.5])
                holes(1);
        }
    }
}

color("SkyBlue")
    gear_200();

/*
translate([unit*-13.5, unit*-13.5, unit*-0.5])
    %cube_base(28, 28, h=0.5, fill_holes=true);
*/

use <gr-8.scad>
use <gr-24.scad>
use <gr-40.scad>

%translate([0, -unit*12,  0])
    rotate([0, 0, 34])
    gear_8();

%translate([unit*11, 0 , 0])
    rotate([0, 0, 11.2])
    gear_24();

%translate([0, unit*10, 0])
    rotate([0, 0, 6.8])
    gear_40();
