// NAME: Nema 14 Motor Cube 6x6x4 Thin
// CATEGORY: Beam Motor

include <bitbeam-lib/bitbeam-lib.scad>
//include <MCAD/stepper.scad>
//motor(Nema14, pos=[0, 0, 0.9], orientation=[180, 0, 0]);

translate([0, 0, unit/2])
    difference(){
        translate([0, 0, -unit/4])
            cube([unit*6, unit*6, unit/2], center=true);

        for (i=[0:3]){
            rotate([0, 0, 90*i])
                translate([13, 13, -unit/4])
                cylinder(d=3.3, h=unit/1.99, center=true);
        }

        translate([0, 0, -unit/4])
            cylinder(d=25, h=unit/1.99, center=true);
    }

difference(){
    union(){
        translate([-unit*2.5-unit/4, -unit*2.5, -unit*3-unit/2])
            rotate([90, 0, 90])
            cube_base(2, 4, 6, 0.5);
        translate([unit*2.5+unit/4, -unit*2.5, -unit*3-unit/2])
            rotate([90, 0, 90])
            cube_base(2, 4, 6, 0.5);
        translate([-unit*2.5, -unit*2.5-unit/4, -unit*3-unit/2])
            rotate([90, 0, 0])
            cube_base(6, 4, 6, 0.5);
    }

    translate([-unit*2.5, -unit*2.5-unit/4, -unit/2])
        rotate([90, 90, 0]){
            holes(4, h=0.5, skip=[1, 3]);
            for (i=[0,2]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }

    translate([unit*2.5, -unit*2.5-unit/4, -unit/2])
        rotate([90, 90, 0]){
            holes(4, h=0.5, skip=[1, 3]);
            for (i=[0,2]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }

    translate([unit*2.5+unit/4, -unit*2.5, -unit/2])
        rotate([90, 90, 90]){
            holes(4, h=0.5, skip=[0,2]);
            for (i=[1,3]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }

    translate([-unit*2.5-unit/4, -unit*2.5, -unit/2])
        rotate([90, 90, -90]){
            holes(4, h=0.5, skip=[0,2]);
            for (i=[1,3]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }
}
