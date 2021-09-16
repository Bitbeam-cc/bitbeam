// NAME: Beam Track Wheel 11
// CATEGORY: Wheel
// LDRAW: 8

include <lib/track_wheel.scad>

color("gray")
difference(){
    union(){
        track_wheel(11);
        translate([-unit*3, -unit*3, ])
        cube_frame(7, 7);
    }

    for (i=[0:4])
        rotate([0, 0, i*90])
        translate([unit*3, unit*3, 0])
        holes(1);
}
