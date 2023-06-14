// NAME: Beam Triangle 3x3x3
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
for (i=[0:3]) {
    rotate([0, 0, i*120])
    translate([-unit, -(unit*2*sqrt(3))/6, 0])
        cylinder_arm(3, side_holes=false);
}