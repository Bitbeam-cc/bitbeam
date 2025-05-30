// NAME: Gear 56 Thin
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>

module gear_56() {
    rotate([0, 0, 360/56/4])
    difference(){
        gear(number_of_teeth = 56,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit*0.5-0.2,
            rim_thickness = unit*0.5-0.2,
            rim_width = 5,
            hub_thickness = unit,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.,
            circles=0,
            twist=0);

        rotate([0, 0, 360/56/2])
        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=56){
                translate([unit*7.25/2, m*(-unit*0.5+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }


        translate([0, 0, unit*0.5])
            cube(unit+0.2, true);

        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/4+0.01-0.1)+unit*0.25-0.1])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/4-0.8-0.1)+unit*0.25-0.1])
                    cube([unit+0.2, unit+0.2, 0.01], true);
            }

        for (y = [-2:2])
            translate([-unit*2, y*unit, unit*0.25-0.1])
            holes(5, h=0.5-0.2/unit);

        for (a = [0:90:270])
            rotate([0, 0, a+45])
            translate([-unit*2.1, 0, unit*0.5-0.2])
            sphere(d=2);
    }
}

color("SkyBlue")
    gear_56();

use <gr-8.scad>
use <gr-24-th.scad>
use <gr-40-th.scad>

%translate([0, -unit*4,  0])
    gear_8();

%translate([unit*5, 0 , 0])
    gear_24();

%translate([0, -unit*-6, 0])
    gear_40();

%translate([-unit*7,0, 0])
    gear_56();
