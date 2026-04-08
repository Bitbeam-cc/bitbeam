// NAME: 37D Motor Mount
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

module gear_motor_holder() {
    difference(){
        union(){
            ecube([unit*5, unit*4, unit*5], true);
            for (i = [-1, 0, 1]){
                translate([0, 0, i*unit*2])
                    ecube([unit*7, unit*4, unit*1], true);
            }
        }

        translate([0, -2, 0])
            rotate([90, 0, 0])
            cylinder(d=37.4, h=unit*4, center=true, $fn=40);

        hull(){
            translate([0, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=12.2, h=3, center=true);
            translate([0, 15, 7])
                rotate([90, 0, 0])
                cylinder(d=12.2, h=3, center=true);
        }

        for (a = [0:60:300])
            rotate([0, a, 0])
            translate([31/2, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=3.2, h=2.1, center=true);

        for (x = [-1,1]){
            for (z = [-1,0, 1]){
                translate([x*unit*3, -unit*0.5, z*unit*2])
                    rotate([90, 0, 90])
                    holes(2);

                for (y=[-1, 1]){
                    translate([x*unit*3, y*unit*1.5, z*-unit*2])
                        rotate([90, 0, 0])
                        holes(1);
                }

                translate([x*unit*3, -unit*1.5, z*unit*2])
                    rotate([0, 0, 90])
                    holes(4);
            }
        }
    }
}

translate([0, -4, unit*2])
    color("red")
    rotate([-90, 0, 0])
    gear_motor_holder();
