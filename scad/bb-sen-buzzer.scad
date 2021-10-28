// NAME: Buzzer bracket
// CATEGORY: Electric
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

$fn=50;

module sector(){
    rotate([0, 0, 90+45])
    rotate_extrude(angle=270)
        translate([11.7/2, 0, 0])
            square([1.6, unit], true);
}

color("orange")
    translate([-unit, 0, 0]){
        translate([unit, 17.85, 0])
        sector();
        cube_t(3, 2.1, h=1);
    }
