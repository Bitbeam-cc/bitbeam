// NAME: Beam Triangle 7x7x7
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
for (i=[0:3]) {
    rotate([0, 0, i*120])
    translate([unit*-3, -(unit*6*sqrt(3))/6, 0])
        cylinder_arm(7, skip_side=[0, 1, 5, 6]);
}
