// NAME: Pencil Holder 6x2
// CATEGORY: Special

include <bitbeam-lib/bitbeam-lib.scad>

difference(){
    hull(){
        rotate([90,0,0])
            cylinder(d=unit, h=unit*2-0.3, center=true);

        translate([unit*5, 0,0])
            cube([unit, unit*2-0.3, unit], center=true);
    }

    for (i=[0:3]){
        translate([unit*i, 0, 0])
            rotate([90,0,0])
            cylinder(d=hole, h=unit*3.01, center=true);
    }

    translate([unit*4+1, 0,0])
        cylinder(d=12, h=unit*1.01, center=true);


    translate([40.5, 0, 0]){
        hull(){
            for (z=[0, unit/2]){
                translate([0, 0, z])
                    rotate([0, 90, 0])
                    cylinder(d=6.3, $fn=6, h=2.7, center=true);
            }
        }

        rotate([0, 90, 0])
            cylinder(d=3, h=unit, center=true);
    }

    for (i=[1:3]){
        translate([unit*i, -unit/2, 0])
            rotate([0, 0, 90])
            holes(2);
    }
}
