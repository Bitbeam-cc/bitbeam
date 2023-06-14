// NAME: Beam Triangle 4x4x4
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
for (i=[0:3]) {
    rotate([0, 0, i*120])
    translate([unit*-1.5, -(unit*3*sqrt(3))/6, 0])
        cylinder_arm(4, side_holes=false);
}
