// NAME: Wheel 4 Shaft hole
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <lib/holes.scad>

module wheel(size, h=1, logo=true){
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);
            cylinder(r=unit+0.1, h=unit, center=true, $fn=40);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0])
                    cube_arm(((size+1)/2)-1.2, h=1, side_holes=false);
            }
        }

        rotate([0, 0, 45])
        shaft_hole(1);

        rotate([0, 90, 90+45])
            cylinder(d=2.8, h=size*unit+0.2, center=true);

        for (i = [0:3]){
            rotate([0, 0, i*90]){
                translate([unit, 0, 0])
                    holes(size/2.1);
            }
        }

        if (logo && size > 3){
            rotate([0, 0, -20])
                translate([0, 0, unit/2])
                round_logo(size);

            rotate([0, 0, 160])
                translate([0, 0, unit/2])
                round_logo(size);
        }
    }
}


color("gray")
    wheel(4);
