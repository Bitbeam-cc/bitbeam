// NAME: Jointed Beam Thin
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

module joint_hole(){
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

translate([-unit*0.5, unit*0.5, unit*0.25])
    color("DarkOrange")
    difference(){
        translate([unit*1.4/2-unit*0.2, 0, 0])
            ecube([unit*1.4, unit, unit/2], true);
        joint_hole();
        translate([unit, 0, 0])
        mirror([1, 0, 0])
            joint_hole();
    }
