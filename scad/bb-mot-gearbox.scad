// NAME: Gearbox Motor Mount
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

motor_holes=17.5;

module gear_motor_holder() {
    difference(){
        union(){
            ecube([unit*3+2, unit*2, unit*0.5], true);
            for(x = [-1, 1])
                translate([x*unit*2, -unit*0.5, unit/4])
                    cube_base(1, 2);
        }

        for (x = [-1, 1]){
            translate([x*motor_holes/2, -unit*0.5, 0])
                cylinder(d=3.1, h=unit/1.9, center=true);
        }
        for (x = [-1, 1]){
            translate([x*motor_holes/2, unit*0.5, 0])
                cylinder(d=2.8, h=unit/1.9, center=true);
        }
        translate([0, unit*0.5, unit*0.25])
            sphere(d=3);

        *translate([0, unit/2, unit/4])
            rotate([90, 0, 0])
            cylinder(d=hole, h=unit*2.1, center=true);
        *translate([unit*4, unit/2, unit/4])
            rotate([90, 0, 0])
            cylinder(d=hole, h=unit*2.1, center=true);

        for (x=[-1, 1], y=[-1, 1]){
            translate([x*unit*2, y*unit*0.5, unit*0.25])
                rotate([90, 0, 0])
                holes(1);
        }
    }

}

translate([0, 0, 2])
    color("red")
    gear_motor_holder();
