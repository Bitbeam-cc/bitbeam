// NAME: Worm Gear with Shaft hole
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/holes.scad>

use <gr-24.scad>
use <gr-8.scad>


module thread(od,  // outer diameter of thread
              tl,  // thread length
              p)   // lead of thread
{
    linear_extrude(height = tl, convexity = 10, twist = -360.0*tl/p, center = false)
        translate([od/2-1.8, 0, 0])
        circle(d=od+1.6);
}

module worm(length){
    //render(2)
    intersection(){
        union(){
            cylinder(d1=6, d2=10, h=1);
            translate([0, 0, 1])
                cylinder(d=10, h=length-2);
            translate([0, 0, length-1])
                cylinder(d1=10, d2=6, h=1);
        }
        union(){
            cylinder(d=6, h=unit*3);
            thread(6.2, unit*3-0.2, 2.88);
        }
    }
}

translate([0, 0, -unit-1.8])
    color("SkyBlue")
    difference(){
        rotate([0, 0, 40])
            worm(unit*3-0.2);
        translate([0, 0, unit*1.5-0.1])
            scale([1.03, 1.03, 1])
            shaft_hole((unit*3-0.2)/unit);
    }

translate([unit*2, unit/2, 0.6])
rotate([90, 0, 0])
    %gear_24();
translate([-unit*1, unit/2, 0.6])
rotate([90, 0, 0])
    %gear_8();
