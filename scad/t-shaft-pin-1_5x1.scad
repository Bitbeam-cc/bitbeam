// NAME: T-Shaft 1.5 + Pin 1
// LDRAW: 379
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/shafts.scad>
use <lib/pins.scad>

color("SlateGray")
{
    t_shaft(2.5);

    translate([0, 0, unit*0.5])
    difference(){
        pin(1.5);
        translate([0, 0, -unit*0.75+0.5])
            cube(unit, true);

        translate([0, 4.8/2+0.95, unit*0.25])
            cube([unit, 3.1, unit], center=true);
        translate([0, -4.8/2-0.95, unit*0.25])
            cube([unit, 3.1, unit], center=true);
    }

    translate([0, 0, unit*0.5])
    translate([0, 0, -unit*0.25])
        difference(){
            cylinder(d1=4.3, d2=4.6, h=0.5);

            translate([0, 4.8/2+0.95, 0.25])
                cube([unit, 3.1, 0.6], center=true);
            translate([0, -4.8/2-0.95, 0.25])
                cube([unit, 3.1, 0.6], center=true);
        }
}
