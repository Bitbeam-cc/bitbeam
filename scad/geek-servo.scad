// NAME: Geek Servo
// CATEGORY: Motor
// COLOR: 493

include <bitbeam-lib/bitbeam-lib.scad>

module plus_shaft(h){
    cube([4.9, 2, unit*h], center=true);
    cube([2, 4.9, unit*h], center=true);
}

color("red"){
    translate([unit*-2, 0, 0])
        cube_arm(5, h=2, skip=[1, 2, 3], side_holes=false);

    translate([0, -unit*0.25, 0])    
        ecube([unit*3, unit*3.5, unit*2], true);
    
    translate([unit*0.5, 0, 0])
        rotate([-90, 0, 0])
        cylinder(d=11, h=unit/2+11, $fn=40);

    translate([unit*0.5, unit*2, 0])
        rotate([-90, 0, 0])
        plus_shaft(2);
}
