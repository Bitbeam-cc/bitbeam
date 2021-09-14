// NAME: Beam Ang. 7x4x3 90 Deg.
// COLOR: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
translate([4, 4, 4])
difference(){
    union(){
        cube_angle(7, 4, 45);

        translate([unit*3, 0, 0])
            cube_arm(1, skip_side=[0]);

        translate([unit*3, 0, 0])
            rotate([0, 0, 45])
            cube_arm(3, skip_side=[0]);
    }

    translate([unit*3, 0, 0])
        rotate([0, 0, 180+45])
        translate([0, unit, 0])
        cube([unit, unit, unit*1.01], center=true);
    for (z=[-1, 1])
        translate([unit*3, 0, 0])
        rotate([0, 0, 180+45])
        translate([0, unit/2, unit*0.5*z])
        rotate([45, 0, 0])
        cube([unit, edge, edge], center=true);

    translate([unit*3, -unit, 0])
        cube([unit, unit, unit*1.01], center=true);
    for (z=[-1, 1])
        translate([unit*3, -unit/2, unit*0.5*z])
        rotate([45, 0, 0])
        cube([unit, edge, edge], center=true);
}
