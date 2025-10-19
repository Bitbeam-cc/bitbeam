// NAME: Ping-Pong Pivot
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>

module bb_pivot(){
    translate([4-5*unit, 0, 0])
        cube_arm(10, skip=[2, 3, 4, 5, 6, 7]);

    translate([0, 0, 3*unit+2])
        difference(){
            union(){
                sphere(d=45, $fn=80);

                hull(){
                    translate([0, 0, -22])
                        cube([5*unit, unit*0.91, 0.001], center=true);
                    translate([0, 0, -6])
                        cube([unit*4, 3.5*unit, 0.001], center=true);
                }
            }

            translate([0, 0, 2*unit])
                cube([50, 50, 18.1], center=true);

            cube([50, 5, 15], center=true);
            cube([5, 50, 15], center=true);

            sphere(d=42, $fn=80);
        }
}

translate([4, 4, 4])
    color("gray")
    bb_pivot();
