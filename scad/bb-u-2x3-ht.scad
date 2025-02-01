// NAME: Beam U Shape 2x3 Half thin
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    translate([4-1.5*unit, 4, unit/2]) {
        translate([0, -unit*0.25, 0])
            rotate([90, 0, 0])
            cube_arm(3, h=0.5);
        translate([unit*2, 0, 0])
            rotate([0, 0, 90])
            cube_arm(2, skip=[0], skip_side=[0]);
        rotate([0, 0, 90])
            cube_arm(2, skip=[0], skip_side=[0]);
    }
    for(x=[-1, 1])
        translate([unit*x, unit*0.5, unit*0.5])
        holes(1);
}
