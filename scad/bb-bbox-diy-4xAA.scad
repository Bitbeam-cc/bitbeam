// NAME: DIY Batery Box 4xAA 8x10
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-bbox-diy-1xAA.scad>

color("YellowGreen")
translate([0, 0, unit*0.5])
difference(){
    union(){
        ecube([unit*8, unit*10, unit], true);
        translate([0, 0, 1.5])
            ecube([unit*8, unit*8, unit+3], true);
    }
    for(y = [-1, 1])
        translate([-unit*3.5, y*unit*4.5, 0])
        holes(8);
    
    translate([0, 0, 30/2-unit/2+4])
        rotate([0, 90, 0])
        cylinder(d=30, h=unit*8+0.1, center=true);
    
    for (i = [0:3]){
        translate([i*15-1.5*15, 0, 15/2-unit/2+1]){
            rotate([90, 0, 0])
            cylinder(d=14.8, h=53, center=true);
        }
    }
    
    for (i = [-1,1]){
        translate([30*i-15/2*i, -56/2, 15/2-unit/2+1])
            rotate([90, 0, 180])
            unipolar_contact();
    }
    
    for (i = [-1,1]){
        translate([15*i, 56/2, 15/2-unit/2+1])
            rotate([90, 0, 0])
            bipolar_contact();
    }
    translate([0, -56/2, 15/2-unit/2+1])
            rotate([90, 0, 180])
            bipolar_contact();
}

%for (i = [-1:2]){
    translate([i*15-15/2, 0, 15/2+1.5])
        rotate([90, 0, 0])
        mirror([0, 0, i % 2])
        battery_AA(true);
}