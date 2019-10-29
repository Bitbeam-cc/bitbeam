// NAME: BYJ28-48 Motor Cube 5x5x3x0.5

include <bitbeam-lib/bitbeam-lib.scad>


translate([0, 0, unit/2])
    difference(){
        translate([0, 0, -unit/4])
            cube([unit*5, unit*5, unit/2], center=true);

        for (i=[0:3]){
            rotate([0, 0, 90*i+45])
                translate([35/2, 0, -unit/4])
                cylinder(d=4.3, h=unit/1.99, center=true);
        }
        for (i=[0:3]){
            rotate([0, 0, 90*i+45])
                translate([8, 0, -unit/4])
                cylinder(d=9.5, h=unit/1.99, center=true);
        }

    }

difference(){
    union(){
        translate([-unit*2-unit/4, -unit*2, -unit*2-unit/2])
            rotate([90, 0, 90])
            cube_base(2, 3, 5, 0.5);
        translate([unit*2+unit/4, -unit*2, -unit*2-unit/2])
            rotate([90, 0, 90])
            cube_base(2, 3, 5, 0.5);
        translate([-unit*2, -unit*2-unit/4, -unit*2-unit/2])
            rotate([90, 0, 0])
            cube_base(5, 3, 5, 0.5);
    }

    translate([-unit*2, -unit*2-unit/4, -unit/2])
        rotate([90, 90, 0]){
            holes(3, h=0.5, skip=[1, 3]);
            for (i=[0,2]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }

    translate([unit*2, -unit*2-unit/4, -unit/2])
        rotate([90, 90, 0]){
            holes(3, h=0.5, skip=[1, 3]);
            for (i=[0,2]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }

    translate([unit*2+unit/4, -unit*2, -unit/2])
        rotate([90, 90, 90]){
            holes(3, h=0.5, skip=[0,2]);
            for (i=[1]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }

    translate([-unit*2-unit/4, -unit*2, -unit/2])
        rotate([90, 90, -90]){
            holes(3, h=0.5, skip=[0,2]);
            for (i=[1]){
                translate([unit*i, 0, -unit/2])
                    cube([7.4, unit*1.1, unit/2], center=true);
            }
        }
}
