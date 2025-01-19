// NAME: Batery Box Frame 4xAA 7x8
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit*0.5])
color("YellowGreen")
difference(){
    union(){
        translate([-3.5*unit, -3*unit, 0])
            cube_frame(8, 7);
        translate([-3.5*unit, 0, 0])
            cube_arm(8, skip_side=[0, 7], skip=[0, 7]);
    }
    
    for (x = [-1, 1])
        translate([x*49/2, 0, 0])
        cylinder(d=2.8, h=8.1, center=true);
}

*%hull(){
    for (x = [-1, 1])
        translate([x*(63-15)/2, 0, 15/2+unit])
        hull(){
            translate([0, 0, -15/4])
                cube([15, 57, 15/2], true);    
            rotate([90, 0, 0])
                cylinder(d=15, h=57, center=true);
        }
}