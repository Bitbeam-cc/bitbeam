// NAME: 25D Motor Mount
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

module gear_motor_holder() {
    difference(){
        union(){
            ecube([unit*3, unit*4, unit*5], true);
            ecube([unit*5, unit*4, unit*3], true);
        }

        translate([0, -2, 0])
            rotate([90, 0, 0])
            cylinder(d=25.4, h=unit*4, center=true, $fn=40);

        translate([0, 15, 0])
            rotate([90, 0, 0])
            cylinder(d=7.2, h=3, center=true);


        for (i = [-1, 1])
            translate([i*17/2, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=3.2, h=3, center=true);

        for (x = [-1,1]){
            for (z = [-1,1]){
                translate([x*unit*2, -unit*0.5, z*unit])
                    rotate([90, 0, 90])
                    holes(2);

                translate([x*unit, -unit*0.5, z*unit*2])
                    rotate([0, 0, 90])
                    holes(2);

                for (y=[-1, 1]){
                    translate([x*unit*2, y*unit*1.5, z*-unit])
                        rotate([90, 0, 0])
                        holes(1);
                    translate([x*unit, y*unit*1.5, z*-unit*2])
                        rotate([90, 0, 0])
                        holes(1);
                }
            }
            translate([x*unit*2, -unit*1.5, 0])
                rotate([0, 0, 90])
                holes(4, h=3);
            translate([0, -unit*1.5, x*unit*2])
                rotate([90, 0, 90])
                holes(4, h=3);
        }
    }
}

translate([0, -4, unit*2])
    color("red")
    rotate([-90, 0, 0])
    gear_motor_holder();
