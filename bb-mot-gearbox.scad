include <bitbeam-lib/bitbeam-lib.scad>

motor_holes=17.5;

module gear_motor_holder() {
    difference(){
        union(){
            cube_arm(5, h=0.5, skip=[1, 2, 3]);

            translate([0, unit, 0])
                cube_arm(5, h=0.5, skip=[1, 2, 3]);
            translate([0, 0, unit/4])
                cube_base(1, 2);
            translate([4*unit, 0, unit/4])
                cube_base(1, 2);

        }

        for (x = [-1, 1]){
            translate([unit*2+x*motor_holes/2, 0, 0])
                cylinder(d=3.1, h=unit/1.9, center=true);
        }


        translate([0, unit/2, unit/4])
            rotate([90, 0, 0])
            cylinder(d=hole, h=unit*2.1, center=true);
        translate([unit*4, unit/2, unit/4])
            rotate([90, 0, 0])
            cylinder(d=hole, h=unit*2.1, center=true);
    }

}

translate([-2*unit, -4, 2])
    gear_motor_holder();
