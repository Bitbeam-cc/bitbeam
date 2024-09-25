// NAME: Mini Gear Motor Mount
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>


module gear_motor_holder() {
    difference(){
        ecube([unit*3, unit*4, unit*3], true);

        translate([0, 0, 20/2-5])
            ecube([12.2, 28, 20], true);

        hull(){
            translate([0, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=4.2, h=3, center=true);
            translate([0, 15, 13])
                rotate([90, 0, 0])
                cylinder(d=4.2, h=3, center=true);
        }

        for (i = [-1, 1])
            translate([i*4.5, 15, 0])
                rotate([90, 0, 0])
                cylinder(d=2, h=3, center=true);

        for (x = [-1:1]){
            for (z = [-1,1])
                translate([x*unit, -unit*1.5, z*unit])
                    rotate([90, 0, 90])
                    holes(4);
            if (x!=0)
                translate([x*unit, -unit*1.5, -unit])
                    rotate([0, 0, 90])
                    holes(4);
        }
    }
}

translate([0, -4, unit*1.5])
    color("red")
    rotate([0, 0, 180])
    gear_motor_holder();
