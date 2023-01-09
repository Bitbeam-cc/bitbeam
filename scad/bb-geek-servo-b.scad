// NAME: Geek Servo Beam B
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-geek-servo-a.scad>

color("red")
difference(){
    geek_servo_beam();
    translate([0, 0, -unit])
        cube([unit*5.1, unit*4.1, unit*2], true);
}