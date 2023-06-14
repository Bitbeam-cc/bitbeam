// NAME: Beam Triangle 6x6x6
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
for (i=[0:3]) {
    rotate([0, 0, i*120])
    translate([unit*-2.5, -(unit*5*sqrt(3))/6, 0])
        cylinder_arm(6, skip_side=[0, 1, 4, 5]);
}
