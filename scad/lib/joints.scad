include <../bitbeam-lib/bitbeam-lib.scad>

module _joint_hole(){
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

module joint_hole(){
    hull(){
        translate([0, 0, 0])
            cylinder(d=3.2, h=unit+0.1, center=true);
        translate([unit*0.25, 0, 0])
            cylinder(d=3.2, h=unit+0.1, center=true);
    }
    translate([unit*0.205, 0, 0])
        rotate([0, 90, 0])
        cylinder(d1=3.8, d2=6.4, h=1, center=true);

    translate([unit*0.2, 0, 0])
        rotate([0, 0, 45])
        cube([2.76, 2.76, unit+0.1], center=true);

    translate([0, 0, 0])
        sphere(d=hole);
}

*translate([-unit, 0, 0])
%_joint_hole();
*joint_hole();
