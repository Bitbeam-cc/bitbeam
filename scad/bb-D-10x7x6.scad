// NAME: Beam D Frame 10x7x6

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit/2, 0])
difference(){
    translate([4-5*unit, 4-4*unit, 4]){
        cube_arm(10);
        rotate([0,0, 90])
            cube_arm(7);
        translate([5*unit, unit*6, 0])
            rotate([0, 0, 180])
            cube_angle(8, 6, 55.15);
        translate([unit*8.5, 0, 0])
            cube([unit*2, unit, unit], center=true);
        translate([unit*8.83, unit/2, 0])
            rotate([0, 0, -55.15])
            cube([unit*2, unit, unit], center=true);
    }
    translate([unit*5.5, -unit*3.5, unit/2])
        cube([unit, unit, unit*1.1], center=true);
    translate([unit*4.5, -unit*4.5, unit/2])
        cube([unit, unit, unit*1.1], center=true);
    translate([unit*5.2, -unit*2.5, unit/2])
        rotate([0, 0, -55.15])
        cube([unit, unit, unit*1.1], center=true);
    translate([unit*3.5, -unit*3.5, unit/2])
        holes(2);
    translate([unit*3.36, -unit*1.6, unit/2])
        rotate([0, 0, -55.15])
        holes(2);
}
