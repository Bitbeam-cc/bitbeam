// NAME: Hinge Beam 2 x 1 Thin
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

color("DarkOrange")
translate([-unit*0.5, unit*0.5, 0])
difference(){
    union(){
        translate([0, 0, unit*0.25])
            cube_arm(2, h=0.5);
        translate([-unit*0.5, -unit, unit*0.5])
            rotate([0, 90, 0])
            ecylinder(d=unit, h=unit-0.2);
        translate([-unit*0.5, -unit-0.35, 0])
            ecube([unit-0.2, unit, unit*0.5]);
    }

    translate([-0.1, -unit, unit*0.5])
        rotate([0, 90, 0])
        holes(1, h=(unit-0.2)/unit);
    translate([0, 0, unit*0.25])
        holes(1, 0.5);
}