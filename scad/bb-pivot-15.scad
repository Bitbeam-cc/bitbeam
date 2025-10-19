// NAME: Ball 15mm Pivot
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>

module bb_pivot(){
    translate([-1*unit, 0, 0])
        cube_arm(3);

    translate([0, 0, 14])
        difference(){
            union(){
                sphere(d=20, $fn=80);

                hull(){
                    translate([0, 0, -10])
                        cube([unit, unit*0.91, 0.001], center=true);
                    translate([0, 0, -6])
                        cube([unit*1.4, unit*1.4, 0.001], center=true);
                }
            }

            translate([0, 0, 14])
                cube(20, center=true);

            cube([20, 4, 11], center=true);
            cube([4, 20, 11], center=true);

            sphere(d=16, $fn=80);
        }
}

translate([0, 0, 4])
    color("gray")
    bb_pivot();
