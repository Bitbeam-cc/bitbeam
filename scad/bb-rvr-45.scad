// NAME: Rail Switch Right Angle 45°
// CATEGORY: Rail
// LDRAW: 19

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/rail.scad>

module curve(angle){
    translate([0, 0, unit*0.5]) {
        rail_curve(48.45, angle);
        difference(){
            rail_curve(57.55, angle);
            translate([unit*28.25, unit*3.5, unit])
                cube([unit, unit*7, unit*1.01], true);
            translate([unit*23.75, unit*15.25, unit])
                cube([unit, unit*3, unit*1.01], true);
        }

    }

    for (a=[0, 1]){
        rotate([0, 0, a*45]) //11 -> 22
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
        rotate([0, 0, a*45]){
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

    for (a=[22.5,33.75])
        rotate([0, 0, a])
        translate([unit*22.5, -unit/2, unit*0.25]){
            cube_base(6, 2, h=0.5);
            for (x=[1])
                translate([unit*x, unit*0.5, 0])
                ecube([unit, unit*2, unit*0.5], true);
        }
}

color("tan")
difference(){
   union(){
        translate([unit*-26, unit*-10, 0])
            curve(45);
       difference(){
            rotate([0, 0, 90])
                rail(20);

            translate([unit*-2-2.3, unit*4.5+1.6, unit*1.5])
                rotate([0, 0, -58.5])
                cube([unit*1.3, unit*.25, unit], true);
            translate([unit*-2-2.3, unit*-7.5, unit*1.5])
                rotate([0, 0, -78.5])
                cube([unit*8, unit, unit], true);
       }

       for (y=[-2,6])
            translate([unit*-3.5, unit*y, unit*0.25])
            ecube([unit, unit*2, unit*0.5], true);
       translate([unit*-1.5, 0, unit*0.25])
            ecube([unit*5, unit*2.2, unit*0.5], true);
       translate([0, unit*2, unit*0.25])
            ecube([unit*2, unit*2, unit*0.5], true);
       translate([unit*-1.5, unit*6, unit*0.25])
            ecube([unit, unit*2, unit*0.5], true);
       translate([unit*-2.5, unit*4.6, unit*0.25])
            ecube([unit*1.5, unit, unit*0.5], true);
       translate([unit*1.5, unit*-2, unit*0.25])
            ecube([unit, unit*2, unit*0.5], true);
       translate([unit*1.5, unit*-5.5, unit*0.25])
            ecube([unit, unit, unit*0.5], true);
    }

    translate([-33.9, 41.1, 0])
        holes(1);
}
