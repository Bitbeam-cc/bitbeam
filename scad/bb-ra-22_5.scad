// NAME: Rail Angle 22.5°
// CATEGORY: Train
// LDRAW: 19

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/rail.scad>

module curve(angle){
    translate([0, 0, unit*0.5]) {
        rail_curve(48.45, angle);
        rail_curve(57.55, angle);
    }
    
    for (a=[0, 1]){
        rotate([0, 0, a*angle]) //11 -> 22
        translate([unit*22.5, unit*0.5-unit*a, unit*0.25])
            difference(){
                cube_arm(8, h=0.5, skip=[1,6]);
        
                mirror([0, a, 0])
                translate([unit*(2+3*a), -unit*0.5, 0]){
                    cube([unit/2, unit, unit/2+0.1], true);
                    for (i=[-1, 1]){
                        translate([i*unit/4, 0, 0])
                        rotate([0, 0, 45])
                            cube([0.5, 0.5, unit*0.51], true);
                    }
                }
            }
    }
    
    for (a=[0, 1]){
        rotate([0, 0, a*angle]){
            mirror([0, a, 0])
            translate([unit*(27.5-(a*3)), -unit*0.15, unit*0.25]){
                ecube([unit/2, unit/2-0.1, unit/2], true);
            }
            mirror([0, a, 0])
            translate([unit*(27.5-(a*3)), -0.5*unit, unit*0.25]){
                ecylinder(d=hole-0.1, h=unit/2, center=true);
            }
        }
    }
    
    for (a=[11.25:11.25:angle-11.25])
        rotate([0, 0, a])
        translate([unit*22.5, -unit/2, unit*0.25]){
            cube_base(8, 2, h=0.5);
            for (x=[1, 6])
                translate([unit*x, unit*0.5, 0])
                ecube([unit, unit*2, unit*0.5], true);
        }
}

color("tan")
    curve(22.5);