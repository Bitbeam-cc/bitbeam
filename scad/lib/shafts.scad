
include <../bitbeam-lib/bitbeam-lib.scad>

module t_shaft(size){
    difference(){
        union(){
            cylinder(d=4.3, h=unit*size, center=true);
            translate([0, 0, unit*(size/2-0.6)])
                cylinder(d1=4.3, d2=hole, h=unit*0.6-0.5);
            translate([0, 0, unit*size/2-0.51])
                cylinder(d1=hole, d2=4.3, h=0.5);
            translate([0, 0, -unit*(size/2+0.2)])
                ecylinder(d=unit, h=unit*0.201);
        }

        translate([0, 4.8/2+0.9, -unit*0.251/2])
            cube([unit, 3, unit*(size+0.252)], center=true);
        translate([0, -4.8/2-0.9, -unit*0.251/2])
            cube([unit, 3, unit*(size+0.252)], center=true);

        translate([0, 0, unit*(size/2-0.3)])
            cube([0.7, 3.9, unit*0.61], center=true);
    }
}

//t_shaft(2);

module shaft(size, ds=1){
    difference(){
        union(){
            rotate([0, 0, 360/25/2])
                ecylinder(d=4.3, h=unit*size, center=true, $fn=25);

            for (m = [0, ds])
                mirror([0, 0, m]){
                    translate([0, 0, unit*(size/2-0.6)])
                        cylinder(d1=4.3, d2=hole, h=unit*0.6-0.5);
                    translate([0, 0, unit*size/2-0.5])
                        cylinder(d1=hole, d2=4.3, h=0.5);
                }
        }

        translate([0, 4.8/2+0.9, 0])
            cube([unit, 3, unit*size+0.1], center=true);
        translate([0, -4.8/2-0.9, 0])
            cube([unit, 3, unit*size+0.1], center=true);

        translate([0, 0, unit*(size/2-0.3)])
            cube([0.7, 3.9, unit*0.61], center=true);
        if (ds) {
            translate([0, 0, -1*unit*(size/2-0.3)])
                cube([0.7, 3.9, unit*0.61], center=true);
        }
    }
}

//shaft(4, 0);
