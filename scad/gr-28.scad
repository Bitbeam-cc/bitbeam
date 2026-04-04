// NAME: Gear 28
// CATEGORY: Gear
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_28() {
    difference(){
        rotate([0, 0, 360/28/4])
        gear(number_of_teeth = 28,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit-0.2,
            rim_thickness = unit-0.2,
            rim_width = 2,
            hub_thickness = unit-0.2,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.1,
            circles=0,
            twist=0);

        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=48){
                translate([unit*3.75/2, m*(-unit+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        translate([0, 0, unit*0.5])
            cube(unit+0.1, true);

        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2-0.1+0.01)+unit*0.5-0.1])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.1-0.8)+unit*0.5-0.1])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }

        for (a = [0:90:270])
            rotate([0, 0, a])
            translate([-unit, 0, unit*0.5])
            holes(1);
       for (a = [0,180])
            rotate([0, 0, a+45])
            translate([-unit*1, 0, unit-0.2])
            sphere(d=2);
    }
}

color("DarkOrange")
    gear_28();
%translate([0, -unit*2.25, 0])
    rotate([0, 0, 360/8])
    gear_8();
%translate([unit*3.5, 0 , 0])
    rotate([0, 0, 0])
    gear_28();
