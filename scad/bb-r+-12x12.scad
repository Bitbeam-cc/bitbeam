// NAME: Rail Switch Right Angle 45°
// CATEGORY: Train
// LDRAW: 19

include <bitbeam-lib/bitbeam-lib.scad>
include <lib/rail.scad>

module rail(){
    size = 12;
    for (i=[-1, 1]){
        translate([0, (32/2+unit*0.25+0.25)*i, unit*0.5])
            rail_profile(3.35);
        for(x = [-1, 1])
        translate([(unit*4.125)*x, (32/2+unit*0.25+0.25)*i, unit*0.5])
            rail_profile(3.75);
    }
     
    if (size > 4){
        for (i=[4:4:size-4]){
            translate([(-size/2+0.5+i)*unit, -3.5*unit, unit*0.25]){
                rotate([0, 0, 90])
                    cube_base(8, 2, h=0.5);
                for (l=[1, 6]){
                    translate([-unit*0.5, l*unit, 0])
                        ecube([unit*2, unit, unit/2], true);
                }
            }
        }
    }
    
    difference(){        
        for (i=[0, size-1]){
            translate([(-size/2+0.5+i)*unit, -3.5*unit, unit*0.25])
            rotate([0, 0, 90])
                cube_arm(8, h=0.5, skip=[1,6]);
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
        rail();
        rotate([0, 0, 90])
            rail();
        
        for (x=[-1, 1], y=[-1, 1])
            translate([x*(unit*2.25+0.25), y*(unit*2.25+0.25), unit*.5])
            intersection(){
                rail_profile(0.5);
                rotate([0, 0, 90])
                    rail_profile(0.5);
            }
        
        for (a=[0, 90],  y=[-1, 1])
            rotate([0, 0, a])
            translate([0, unit*2.5*y, unit*0.25])
                ecube([unit*8, unit, unit*0.5], true);
    }  
}

/*
use <bb-wh-rail-3-shaft.scad>
use <lib/shafts.scad>

for(x = [-1, 1])
    translate([unit*1.75*x, -unit*2, unit*3])
    rotate([0, x*90, 0])
        #rwheel(3);

    translate([0, -unit*2, unit*3])
    rotate([0, 90, 0])
        shaft(5.5);
*/