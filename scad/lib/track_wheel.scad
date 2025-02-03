include <../bitbeam-lib/bitbeam-lib.scad>

/*
        circle counting

size  3  (24) =>  75,398 / 6  (60°) = 12.566
size  4  (32) => 100.530 / 8  (45°)
size  5  (40) => 125.663 / 10 (36°)
size  6  (48) => 150,796 / 12 (30°)
size  8  (64) => 201.061 / 16 (22.5°)
size  9  (72) => 226,195 / 18 (20°)
size 10  (80) => 251.327 / 20 (18°)
size 12  (96) => 301,593 / 24 (15°)
size 15 (120) => 376,991 / 30 (12°)
size 16 (128) =>              (11.25°)
size 18 (144) => 452,389 / 36 (10°)
size 20 (160) => 502.654 / 40 (9°)
size 24 (192) => 603,186 / 48 (7.5°)
size 25 (200) =>              (7.2°)
size 30 (240) => 753,982 / 60 (6°) = 12.566
*/

//$fn=40;

module track_wheel(size){
    render(convexity=7)
    difference(){
        ecylinder(d=unit*size, h=unit, center=true, $fn=size*15);
        cylinder(d=unit*(size-2), h=unit*1.1, center=true, $fn=size*10);

         for (i = [0:360/(size/3*6):360]){
            rotate([0, 0, i]){
                translate([unit*size/2, 0, 0])
                    cylinder(d=unit+0.2, h=unit*1.1, center=true);
                translate([unit*size/2, unit/2, 0])
                    rotate([0, 0, 45+12])
                    cube([1.4, 1.4, unit], true);
                translate([unit*size/2, -unit/2, 0])
                    rotate([0, 0, 45-12])
                    cube([1.4, 1.4, unit], true);
            }
         }

        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, 0])
                holes(size/2-1);
            }
    }

    difference(){
        union(){
            cylinder(r=unit+0.2, h=unit, center=true, $fn=40);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0])
                cube_arm((size/2)-1.1, 1, side_holes=false);
            }


            if (size > 8) {
                for (i = [0:3]){
                    rotate([0, 0, 45+i*90])
                    translate([unit, 0, 0]){
                        hull(){
                            translate([unit*((size)/2-2), 0, unit*(0.5-0.5)])
                                ecube([unit*0.25, unit, unit], true);
                            translate([0, 0, 0])
                                ecube([unit*0.75, unit, unit], true);
                        }
                    }
                }
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
        if (size > 8)
            for (y = [-1,1])
                translate([-unit*2, y*unit*2, 0])
                    holes(5, skip=[1, 3]);
    }
}

color("orange")
    track_wheel(5);
