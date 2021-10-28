// NAME: Bevel Gear 36
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_36() {
    *translate([unit*2-2.2,0, 0])
        rotate([0, 45, 0])
        #cube(10, true);


    difference(){
        bevel_gear (
            number_of_teeth=36,
            cone_distance=28.5,
            face_width=5.4,
            outside_circular_pitch=195,
            pressure_angle=30,
            clearance = 0.2,
            bore_diameter=3,
            gear_thickness = 15,
            backlash = 0.3,
            involute_facets=0,
            finish = 0);

        *translate([0, 0, unit*0.25])
            shaft_hole(0.5);

        translate([0, 0, unit*0.5])
            cube(unit+0.2, true);

        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/4+0.01)+unit*0.25])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/4-0.8)+unit*0.25])
                    cube([unit+0.2, unit+0.2, 0.01], true);
            }

        for (i = [-1:1])
            translate([-unit, unit*i, unit*0.5])
                holes(3);

        for (i = [0:360/36:360])
            rotate([0, 0, i])
                translate([unit*2.5, 0, 0])
                rotate([0, 45, 0])
                    cube(3, true);
    }
}

color("SkyBlue")
    gear_36();

/*
use <bb-gr-bevel-22.scad>

translate([unit*2.5, 0 , unit*1.5])
    rotate([0, -90, 0])
    rotate([0, 0, 360/22/2])
    gear_22();
*/
