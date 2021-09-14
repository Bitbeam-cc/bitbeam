// NAME: Nema17 Motor Frame 7x6
// CATEGORY: Beam Motor
// COLOR: 4

include <bitbeam-lib/bitbeam-lib.scad>
//include <MCAD/stepper.scad>
//motor(Nema17, pos=[0, 0, 0.9], orientation=[180, 0, 0]);

$fn=40;

color("red")
difference(){
    union(){
         for (i = [-1, 1])
         translate([-unit*3, i*unit*2.5, unit*0.5])
            cube_arm(7, skip=[1,5], skip_side=[1,5]);

         for (i = [-1, 1])
         translate([i*unit*2, -unit*2.5, unit*0.5])
            rotate([0,0, 90])
            cube_arm(6, skip=[0,1,4,5], side_holes=false);
    }

    translate([0, 0, -0.01])
        cylinder(d=25, h=2);

    for (i=[0:90:360])
        rotate([0, 0, i])
        translate([15.5,15.5,-0.05]){
            cylinder(d=3.5, h=unit*1.1);
            translate([0,0,unit*0.5])
            cylinder(d=7, h=unit*0.6);
        }
}
