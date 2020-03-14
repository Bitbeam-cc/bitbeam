// NAME: Adapter Shaft 8
// CATEGORY: Adapter

include <bitbeam-lib/bitbeam-lib.scad>

$fn=50;

translate([0,0,unit/4])
    difference(){
        union(){
            cylinder(d=16, h=unit*0.5, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, 0])
                cube_arm(3, h=0.5);
        }

        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
    }

difference(){
    cylinder(d=7.9, h=100);

    translate([0,0,80])
        rotate([90,0,0])
        cylinder(d=4.2, h=8, center=true);

    for (x=[-1, 1]){
        for (i=[0:3]){
            translate([x*4,0,85+i*4])
                rotate([90,0,0])
                cylinder(d=3, h=8, $fn=8, center=true);
        }
    }
}
