// NAME: Beam Triangle 5x5x5
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
for (i=[0:3]) {
    rotate([0, 0, i*120])
    translate([unit*-2, -(unit*4*sqrt(3))/6, 0])
        cylinder_arm(5, skip_side=[0, 1, 3, 4]);
}
