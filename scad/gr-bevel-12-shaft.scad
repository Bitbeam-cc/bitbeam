// NAME: Bevel Gear 12 Shaft
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>


module gear_12() {
    *#cylinder(d=unit, h=unit*0.5-0.2);
    *rotate([0, 45, 0])
        #cube(12.25, true);

    difference(){
        render(convexity = 3)
        bevel_gear (
            number_of_teeth=12,
            cone_distance=11.15,
            face_width=4.96,
            outside_circular_pitch=215,
            pressure_angle=30,
            clearance = 0.2,
            bore_diameter=3,
            gear_thickness = 15,
            backlash = 0.2,
            involute_facets=0,
            finish = 0);

        translate([0, 0, unit*0.25-0.1])
            shaft_hole(0.5-0.2/unit);

        for (i = [0:360/12:360])
            rotate([0, 0, i])
                translate([unit, 0, 0])
                rotate([0, 45, 0])
                    cube(3, true);
    }
}

*#cylinder(d=unit*2, h=1, $fn=50);
!color("SkyBlue")
    gear_12();
translate([unit, 0 , unit])
    rotate([0, -90, 0])
    rotate([0, 0, 360/12/2])
    gear_12();
