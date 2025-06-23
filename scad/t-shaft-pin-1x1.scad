// NAME: T-Shaft Pin 1x1
// LDRAW: 0
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/shafts.scad>
use <lib/pins.scad>

color("#404040")
{
    t_shaft((2*8+0.2)/8);

    translate([0, 0, 0.1])
    difference(){
        pin(2);
        translate([0, 0, -unit*0.5])
            cube(unit+1, true);

        translate([0, 4.8/2+0.95, unit*0.5])
            cube([unit, 3.1, unit], center=true);
        translate([0, -4.8/2-0.95, unit*0.5])
            cube([unit, 3.1, unit], center=true);
    }

    translate([0, 0, 0.1])
        difference(){
            cylinder(d1=4.3, d2=4.6, h=0.5);

            translate([0, 4.8/2+0.95, 0.25])
                cube([unit, 3.1, 0.6], center=true);
            translate([0, -4.8/2-0.95, 0.25])
                cube([unit, 3.1, 0.6], center=true);
        }
}

*#cube(3.6, true);
