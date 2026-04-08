// NAME: Beam 2 for LED 3mm
// CATEGORY: Electric
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, unit/2])
    color("YellowGreen")
    rotate([0, 0, 180])
    mirror([0, 0, 1])
    difference(){
        ecube([unit*2, unit, unit], true);
        translate([unit*0.5, 0, 0])
            holes(1);

        translate([-unit*0.5, 0, 0])
            cylinder(d=3.2, h=unit+0.1, center=true);

        hull(){
            translate([-unit*0.5, 0, -4.1])
                cylinder(d=4, h=3.6);
            translate([-unit, 0, -4.1])
                cylinder(d=4, h=3.6);
        }
    }
