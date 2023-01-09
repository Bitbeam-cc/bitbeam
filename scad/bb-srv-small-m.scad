// NAME: Mini Servo Motor Mount
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

module servo_mount(){
    difference(){
            cube([8, 18.01, 5], center=true);
            translate([2, 1, 0])
                cylinder(d=2.6, h=5.1, center=true);
            translate([2, -3, 0])
                cylinder(d=2.6, h=5.1, center=true);
        }
}

color("red")
translate([unit*-2.5, unit*0.5, unit*0.5]){
    cube_arm(6, skip_side=[0,1,4,5]);

    translate([5.5, -13, -1.5])
        servo_mount();
    translate([37.4, -13, -1.5])
        mirror([1,0,0])
        servo_mount();
}
