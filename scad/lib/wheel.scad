// NAME: Beam Wheel 5
// CATEGORY: Wheel

include <../bitbeam-lib/bitbeam-lib.scad>

module profile(size){
    rotate_extrude($fn=60)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit/2-0.5, 0], [unit/2,0.5],
            [unit/2, unit-0.5], [unit/2-0.5, unit], [0, unit]
        ]);
}

module wheel(size){
    difference(){
        profile(size);

        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, unit*0.5])
                holes(size/2.1);
        }
    }

    translate([0, 0, unit*0.5])
    difference(){
        union(){
            cylinder(r=unit, h=unit, center=true, $fn=40);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0])
                cube_arm(((size+1)/2)-1.2, 1, side_holes=false);
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
                holes(size/2.1);
            }
    }
}

color("orange")
    wheel(6);
