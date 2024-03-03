
include <../bitbeam-lib/bitbeam-lib.scad>

module t_shaft(size){
    difference(){
        union(){
            cylinder(d=4.3, h=unit*size, center=true);
            translate([0, 0, unit*(size/2-0.6)])
                cylinder(d1=4.3, d2=hole, h=unit*0.6-0.5);
            translate([0, 0, unit*size/2-0.51])
                cylinder(d1=hole, d2=4.3, h=0.5);
            translate([0, 0, -unit*(size/2+0.25)])
                ecylinder(d=unit, h=unit*0.251);
        }
    
        translate([0, 4.8/2+0.95, -unit*0.251/2])
            cube([unit, 3, unit*(size+0.252)], center=true);
        translate([0, -4.8/2-0.95, -unit*0.251/2])
            cube([unit, 3, unit*(size+0.252)], center=true);
        
        translate([0, 0, unit*(size/2-0.3)])
            cube([0.7, 3.9, unit*0.61], center=true);
    }
}

module shaft(size){
    difference(){
        union(){
            cylinder(d=4.3, h=unit*size, center=true);
            
            for (m = [0, 1])
                mirror([0, 0, m]){
                    translate([0, 0, unit*(size/2-0.6)])
                        cylinder(d1=4.3, d2=hole, h=unit*0.6-0.5);
                    translate([0, 0, unit*size/2-0.51])
                        cylinder(d1=hole, d2=4.3, h=0.5);
                }
        }
    
        translate([0, 4.8/2+0.95, 0])
            cube([unit, 3, unit*size+0.1], center=true);
        translate([0, -4.8/2-0.95, 0])
            cube([unit, 3, unit*size+0.1], center=true);
        
        for (z=[-1, 1])
        translate([0, 0, z*unit*(size/2-0.3)])
            cube([0.7, 3.9, unit*0.61], center=true);
    }
}

//shaft(8);