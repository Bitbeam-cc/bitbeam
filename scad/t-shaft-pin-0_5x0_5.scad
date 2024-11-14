// NAME: T-Shaft Pin 1
// LDRAW: 379
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/shafts.scad>
use <pin-1.scad>

color("SlateGray")
{
    t_shaft(1);

    difference(){
        pin1();
        translate([0, 0, -unit*0.5+0.5])
            cube(unit, true);

        translate([0, 4.8/2+0.95, unit*0.25])
            cube([unit, 3.1, unit], center=true);
        translate([0, -4.8/2-0.95, unit*0.25])
            cube([unit, 3.1, unit], center=true);
    }

    difference(){
        cylinder(d1=4.3, d2=4.6, h=0.5);

        translate([0, 4.8/2+0.95, 0.25])
            cube([unit, 3.1, 0.6], center=true);
        translate([0, -4.8/2-0.95, 0.25])
            cube([unit, 3.1, 0.6], center=true);
    }

    cube([2, 3.6, 2], true);
}
