// NAME: DIY Batery Box 2xAAA 3x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-bbox-diy-1xAAA.scad>

color("YellowGreen")
translate([0, 0, unit*0.5])
difference(){
    union(){
        ecube([unit*3, unit*9, unit], true);
        translate([0, 0, 1])
            ecube([unit*3, unit*7, unit+2], true);
    }
    for(y = [-1, 1])
        translate([-unit*1, y*unit*4, 0])
        holes(6);

    translate([0, 0, 30/2-unit/2+4])
        rotate([0, 90, 0])
        cylinder(d=30, h=unit*8+0.1, center=true);

    for (i = [0:1]){
        translate([i*11-11/2, 0, 11/2-unit/2+1]){
            rotate([90, -90, 0])
            hull(){
                cylinder(d=10.8, h=47, center=true);
                translate([5, 0, 0])
                    cylinder(d=10, h=47, center=true);
            }
        }
    }

    for (i = [-1,1]){
        translate([11/2*i, 50/2, 11/2-unit/2+1])
            rotate([90, 0, 0])
            unipolar_contact();
    }

    translate([0, -50/2, 11/2-unit/2+1])
            rotate([90, 0, 180])
            bipolar_contact();
}

for (i = [0:1]){
    translate([i*11-11/2, 0, 11/2+1.5])
        rotate([90, 0, 0])
        mirror([0, 0, i % 2])
        %battery_AAA(true);
}
