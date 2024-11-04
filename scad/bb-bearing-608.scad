// NAME: Bearing 608RS mount
// CATEGORY: Wheel
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

// bearing 8x22x7

translate([0, 0, unit*0.5])
color("red")
difference(){
    union(){
        ecube([3*unit, 3*unit, unit], center=true);
        translate([-unit*2, unit, 0])
            cube_arm(5, skip_side=[1,2,3], skip=[1,2,3]);
        translate([-unit*2, -unit, 0])
            cube_arm(5, skip_side=[1,2,3], skip=[1,2,3]);
    }

    translate([0, 0, 0.49])
        cylinder(d=22.1, h=4.01, $fn=40);
    cylinder(d=18, h=unit*1.01, center=true, $fn=40);
}
