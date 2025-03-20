
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

module side(){
    difference(){
        cylinder(r1=0, r2=4.7, h=2, center=true, $fn=30);
        translate([0, 0, 0.01])
            cylinder(d1=0, d2=4.7, h=2, center=true, $fn=30);
    }
}

module plus_shaft(size, ds=1){
    difference(){
        cylinder(d=4.6, h=size*unit, center=true, $fn=60);

        for(x=[-1, 1])
            for(y=[-1, 1])
                translate([x*1.7, y*1.7, 0])
                    cube([1.7, 1.7, size*unit+0.1], center=true);

        for(x=[-1, 1])
            for(y=[-1, 1])
                translate([x*2.85, y*2.85, 0])
                    rotate([0, 0, 45])
                    cube([4, 4, size*unit+0.1], center=true);

       translate([0,0,size*unit/2])
            mirror([0,0,1])
            side();

        if (ds){
            translate([0,0,-size*unit/2])
                side();
        }
    }
}

// plus_shaft(1, 0);
