// NAME: Beam 1 with Joint Block
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

//translate([-unit*0.5, unit*0.5, unit*0.5])
//    color("DarkOrange")
    difference(){
        cube_arm(1.7, h=1, side_holes=true, skip=[1], skip_side=[1]);
        hull(){
            translate([unit, 0, 0])
                cylinder(d=3.2, h=unit+0.1, center=true);
            translate([unit*1.5, 0, 0])
                cylinder(d=3.2, h=unit+0.1, center=true);
        }
        translate([unit*1.205, 0, 0])
            rotate([0, 90, 0])
            cylinder(d1=3.8, d2=6.4, h=1, center=true);

        translate([unit*1.2, 0, 0])
            rotate([0, 0, 45])
            cube([2.76, 2.76, unit+0.1], center=true);

        translate([unit, 0, 0])
            sphere(d=hole);

    }
