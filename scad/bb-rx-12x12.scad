// NAME: Rail Cross X Angle 45° 12x12
// CATEGORY: Rail
// LDRAW: 19

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/rail.scad>

module a_rail(size){
    for (i=[-1, 1]){
        translate([0, (32/2+unit*0.25+0.25)*i, unit*0.5])
            rail_profile(size);
    }

    translate([(-size/2+0.5+11)*unit, -3.5*unit, unit*0.25]){
        rotate([0, 0, 90])
            mirror([0, 1, 0])
            cube_base(4, 2, 5, h=0.5);
        translate([unit*0.5, unit, 0])
            ecube([unit*2, unit, unit/2], true);
    }

    translate([(-size/2+0.5+4)*unit, 3.5*unit, unit*0.25]){
        rotate([0, 0, 90])
            mirror([1, 0, 0])
            cube_base(4, 2, 5, h=0.5);
        translate([-unit*0.5, -unit, 0])
            ecube([unit*2, unit, unit/2], true);
    }

    difference(){
        union() {
            translate([(-size/2+0.5)*unit, -2.5*unit, unit*0.25])
            rotate([0, 0, 90])
                cube_arm(7, h=0.5, skip=[0,5]);
            translate([(-size/2+0.5+15)*unit, -3.5*unit, unit*0.25])
            rotate([0, 0, 90])
                cube_arm(7, h=0.5, skip=[1,6]);
        }

        for (r = [0, 1]){
            rotate([0, 0, r*180])
            translate([size/2*unit, -unit*1.5, unit*0.25]){
                cube([unit, unit/2, unit/2+0.1], true);
                for (i=[-1, 1]){
                    translate([0, i*unit/4, 0])
                    rotate([0, 0, 45])
                        cube([0.5, 0.5, unit*0.51], true);
                }
            }
        }
    }

    for (r = [0, 1]){
            rotate([0, 0, r*180]){
                translate([(size/2+0.15)*unit, unit*1.5, unit*0.25]){
                    ecube([unit/2, unit/2-0.1, unit/2], true);
                }
                translate([(size/2+0.5)*unit, unit*1.5, unit*0.25]){
                    ecylinder(d=hole-0.1, h=unit/2, center=true);
                }
            }
        }
}

module b_rail(size){
    for (i=[-1, 1]){
        translate([0, (32/2+unit*0.25+0.25)*i, unit*0.5])
            rail_profile(size);
    }

    translate([(-size/2+0.5+4)*unit, -3.5*unit, unit*0.25]){
        rotate([0, 0, 90])
            cube_base(4, 2, 5, h=0.5);

        translate([-unit*0.5, unit, 0])
            ecube([unit*2, unit, unit/2], true);
    }

    translate([(-size/2+0.5+11)*unit, 3.5*unit, unit*0.25]){
        rotate([0, 0, -90])
            cube_base(4, 2, 5, h=0.5);

        translate([unit*0.5, -unit, 0])
            ecube([unit*2, unit, unit/2], true);
    }

    difference(){
        union() {
            translate([(-size/2+0.5)*unit, -3.5*unit, unit*0.25])
            rotate([0, 0, 90])
                cube_arm(7, h=0.5, skip=[1,6]);
            translate([(-size/2+0.5+15)*unit, -2.5*unit, unit*0.25])
            rotate([0, 0, 90])
                cube_arm(7, h=0.5, skip=[0,5]);
        }

        for (r = [0, 1]){
            rotate([0, 0, r*180])
            translate([size/2*unit, -unit*1.5, unit*0.25]){
                cube([unit, unit/2, unit/2+0.1], true);
                for (i=[-1, 1]){
                    translate([0, i*unit/4, 0])
                    rotate([0, 0, 45])
                        cube([0.5, 0.5, unit*0.51], true);
                }
            }
        }
    }

    for (r = [0, 1]){
            rotate([0, 0, r*180]){
                translate([(size/2+0.15)*unit, unit*1.5, unit*0.25]){
                    ecube([unit/2, unit/2-0.1, unit/2], true);
                }
                translate([(size/2+0.5)*unit, unit*1.5, unit*0.25]){
                    ecylinder(d=hole-0.1, h=unit/2, center=true);
                }
            }
        }
}


//color("tan")

difference(){
    union(){
        a_rail(16);
        rotate([0, 0, 45])
            b_rail(16);
    }
}

/*
use <bb-wh-rail-2-shaft.scad>

for(x = [-1, 1])
    translate([unit*1.75*x, -unit*2, unit*3])
    rotate([0, x*90, 0])
        #rwheel(3);
*/
