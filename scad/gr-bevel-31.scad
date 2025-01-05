// NAME: Bevel Gear 31
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module gear_31() {
    *#cylinder(d=unit, h=unit*0.5-0.2);

    difference(){
        render(convexity=10)
        bevel_gear (
            number_of_teeth=31,
            cone_distance=22.7,
            face_width=5.20,
            outside_circular_pitch=180,
            pressure_angle=30,
            clearance = 0.2,
            bore_diameter=5,
            gear_thickness = 15,
            backlash = 0.2,
            involute_facets=0,
            finish = 0);

        for (i = [0:360/31:360])
            rotate([0, 0, i])
                translate([unit*2, 0, 0])
                rotate([0, 45, 0])
                    cube(3, true);

        for (i=[0:90:360])
            rotate([0, 0, i])
            translate([-unit, 0, unit*0.25])
            holes(1, 0.5-0.2/unit);
    }
}

color("SkyBlue")
    gear_31();

*%translate([unit*2, 0 , unit*2])
    rotate([0, -90, 0])
    rotate([0, 0, 360/31])
    gear_31();
