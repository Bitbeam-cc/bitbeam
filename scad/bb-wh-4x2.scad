// NAME: Wheel 4x2
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <lib/holes.scad>

module large_wheel(size, h=2){
    render(convexity = 5)
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);
            cylinder(r=unit, h=unit, center=true, $fn=40);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0]){
                    cube_arm(((size+1)/2)-1.2, 1, side_holes=false);
                }
            }
        }

        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, 0])
                holes(1);
        }

        cube(unit+0.1, true);
        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.8)])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }
    }
}

color("gray")
    large_wheel(4, 2);
