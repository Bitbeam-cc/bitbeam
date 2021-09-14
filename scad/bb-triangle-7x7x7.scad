// NAME: Beam Triangle 7x7x7
// COLOR: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue"){
translate([-unit*3, -unit*2, 4]){
    cylinder_angle(6, 6, 120);
}

translate([unit*3, -unit*2, 4])
    mirror([1, 0, 0])
    cylinder_angle(6, 6, 120);

translate([0, 5.55+unit*2.5, 4])
    rotate([0, 0, -120])
    cylinder_angle(6, 6, 120);
}
