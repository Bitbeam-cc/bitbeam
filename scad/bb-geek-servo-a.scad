// NAME: Geek Servo Beam A
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

module geek_servo_beam(){
    difference(){
        union(){
            translate([unit*-2, 0, 0])
                cube_arm(5, h=2, side_holes=false);
            
            translate([-unit, -unit, 0])    
                cube_base(3, 3, h=2);
    
            translate([unit*0.5, unit*0.5, 0])    
                ecube([unit*2, unit*2, unit*2], true);
            
            translate([unit*0.5, 0, 0])
                rotate([-90, 0, 0])
                cylinder(d=11, h=unit*1.5+3, $fn=40);    
        }
    
        translate([unit*0.5, 0, 0])
            cube([unit*1.5, unit*0.35, unit*1.5], true);
    
        translate([unit*0.5, 0, 0])
            rotate([-90, 0, 0])
            cylinder(d=hole, h=unit*2, $fn=40);
    }
}

color("red")
translate([0, 0, unit])
difference(){
    geek_servo_beam();
    translate([0, 0, unit])
        cube([unit*5.1, unit*4.1, unit*2], true);
}