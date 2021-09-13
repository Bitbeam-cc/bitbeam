include <../bitbeam-lib/bitbeam-lib.scad>

/*
        circle counting

size  3  (24) =>  75,398 / 6  (60°) = 12.566
size  6  (48) => 150,796 / 12 (30°) = 12.566
size  9  (72) => 226,195 / 18 (20°) = 12.566
size 12  (96) => 301,593 / 24 (15°) = 12.566
size 15 (120) => 376,991 / 30 (12°) = 12.566
size 21 BAD ANGLE (8.571428571428571°)
size 24 (192) => 603,186 / 48 (7.5°) = 12.566
size 27 BAD ANGLE (6.666666666666667°)
size 30 (240) => 753,982 / 60 (6°) = 12.566

*/

$fn=60;

module track_wheel(size){
    difference(){
        cylinder(d=unit*size, h=unit, center=true);
        cylinder(d=unit*(size-2), h=unit*1.1, center=true);

         for (i = [0:360/(size/3*6):360]){
            rotate([0, 0, i])
                translate([unit*size/2, 0, 0])
                cylinder(d=8.2, h=unit*1.1, center=true);
        }

        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, 0])
                holes(size/2-1);
            }
    }

    difference(){
        union(){
            cylinder(r=unit, h=unit, center=true);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0])
                cube_arm((size/2)-1.1, 1, side_holes=false);
            }
        }

        cube(unit+0.2, true);
        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.8)])
                    cube([unit+0.2, unit+0.2, 0.01], true);
            }

        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, 0])
                holes(size/1-1);
            }
    }
}

//track_wheel(5);
