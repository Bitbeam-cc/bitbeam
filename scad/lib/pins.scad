include <../bitbeam-lib/bitbeam-lib.scad>
use <holes.scad>

module pin(size){
    difference(){
        union(){
            cylinder(d=4.6, h=unit*size, center=true);
    
            for (m = [0, 1])
                mirror([0, 0, m]){
                    translate([0, 0, unit*(size/2-0.5)])
                        cylinder(d1=4.6, d2=hole+0.2, h=unit*0.5);
                }
        }
    
        translate([0, 4.8/2+0.5, 0])
            cube([5, 2.1, unit*size+0.1], center=true);
        translate([0, -4.8/2-0.5, 0])
            cube([5, 2.1, unit*size+0.1], center=true);
        
        for (z=[-1, 1])
            translate([0, 0, z*unit*(size/2-0.3)])
            cube([0.7, 3.9, unit*0.61], center=true);
    
        for(m=[0, 1])
            mirror([0, 0, m])
            translate([0, 0, unit*size/2-edge])
            cap();
    }
}

//pin(4);