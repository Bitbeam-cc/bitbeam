// NAME: Gear 56
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>

module gear_56() {
    difference(){
        gear(number_of_teeth = 56,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit*0.5,
            rim_thickness = unit,
            rim_width = 5,
            hub_thickness = unit,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.,
            circles=0,
            twist=0);

        for (i = [0:360/56:360])
            rotate([0, 0, i]){
                translate([unit*7.5/2, 0, 0])
                rotate([0, 45, 0])
                    cube(2, true);
                translate([unit*7.5/2, 0, unit])
                rotate([0, 45, 0])
                    cube(2, true);
            }


        translate([0, 0, unit*0.5])
            cube(unit+0.1, true);

        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/4+0.01)+unit*0.25])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/4-0.8)+unit*0.25])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }

        for (y = [-2:2])
            translate([-unit*2, y*unit, unit*0.5])
            holes(5);
    }
}

color("SkyBlue")
    gear_56();

/*
use <bb-gr-8.scad>
use <bb-gr-24.scad>
use <bb-gr-40.scad>

%translate([0, -unit*4,  0])
    rotate([0, 0, 360/8/2])
    gear_8();

%translate([unit*5, 0 , 0])
    rotate([0, 0, 360/24/2])
    gear_24();

%translate([0, -unit*-6, 0])
    rotate([0, 0, 360/40/2])
    gear_40();

%translate([-unit*7,0, 0])
    rotate([0, 0, 360/40/2])
    gear_56();
*/
