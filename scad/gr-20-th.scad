// NAME: Gear 20 Thin with Beam hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8.scad>
use <MCAD/involute_gears.scad>

module gear_20() {
    difference(){
        rotate([0, 0, 360/20/4])
        gear(number_of_teeth = 20,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit*0.5-0.2,
            rim_thickness = unit*0.5-0.2,
            rim_width = 5,
            hub_thickness = unit*0.5-0.2,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.1,
            circles=0,
            twist=0);

        for (m = [0, 1])
            mirror([0, 0, m])
            rotate_extrude($fn=40){
                translate([unit*2.75/2, m*(-unit*0.5+0.2)-0.01,])
                polygon([[-0.45, 0], [0, 0], [0, 0.45]]);
            }

        translate([0, 0, unit*0.5])
            cube(unit+0.1, true);

        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/4-0.1+0.01)+unit*0.25-0.1])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/4-0.1-0.8)+unit*0.25-0.1])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }

        for (a = [0, 180])
            rotate([0, 0, a])
            translate([-unit*0.8, 0, unit*0.5-0.2])
            sphere(d=2);
    }
}

color("DarkOrange")
    gear_20();
%translate([0, -unit*1.75, 0])
    gear_8();
%translate([unit*2.5, 0 , 0])
    gear_20();
