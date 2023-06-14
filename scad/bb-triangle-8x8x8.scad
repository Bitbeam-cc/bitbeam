// NAME: Beam Triangle 8x8x8
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
for (i=[0:3]) {
    rotate([0, 0, i*120])
    translate([unit*-3.5, -(unit*7*sqrt(3))/6, 0])
        cylinder_arm(8, skip_side=[0, 1, 6, 7]);
}
