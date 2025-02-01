// NAME: DIY Batery Box 1xAAA 2x9
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module battery_AAA(center=false){
    // 10.5 x 44.5
    translate([0, 0, 0.5 - (center ? 44.5/2 : 0)]){
        cylinder(d=10.5, h=42.5);
    // plus
    translate([0, 0, 42.5])
        cylinder(d=4.5, h=1.5);
    // minus
    translate([0, 0, -0.5])
        cylinder(d=8, h=0.6);
    }
}

module unipolar_contact(){
    cube([10.2, 9.5, 1], true);
    translate([0, -5, -0.25])
        cube([3.5, 10, 0.5], true);
    hull(){
        translate([0, 0, 0])
            cylinder(d=6, h=5);
        translate([0, 5, 0])
            cylinder(d=6, h=5);
    }
}

module bipolar_contact(){
    cube([20.2, 9.5, 1], true);
    for (x = [0, 11]){
        translate([x-22/4, -5, -0.25])
            cube([3.5, 10, 0.5], true);
        hull(){
            translate([x-22/4, 0, 0])
                cylinder(d=6, h=5);
            translate([x-22/4, 5, 0])
                cylinder(d=6, h=5);
        }
    }
}

color("YellowGreen")
translate([0, 0, unit*0.5])
difference(){
    union(){
        ecube([unit*2, unit*9, unit], true);
        translate([0, 0, 1])
            ecube([unit*2, unit*7, unit+2], true);
    }
    for(y = [-1, 1])
        translate([-unit*0.5, y*unit*4, 0])
        holes(2);

    translate([0, 0, 30/2-unit/2+4])
        rotate([0, 90, 0])
        cylinder(d=30, h=unit*8+0.1, center=true);


    translate([0, 0, 11/2-unit/2+1]){
        rotate([90, -90, 0])
        hull(){
            cylinder(d=10.8, h=47, center=true);
            translate([5, 0, 0])
                cylinder(d=10, h=47, center=true);
        }
    }

    for (i = [-1,1]){
        translate([0, 50/2*i, 11/2-unit/2+1])
            rotate([90, 0, (i < 0 ? 180: 0)])
            unipolar_contact();
    }
}


translate([0, 0, 11/2+1.5])
    rotate([90, 0, 0])
    %battery_AAA(true);
