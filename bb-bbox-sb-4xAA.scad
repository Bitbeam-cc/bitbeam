include <bitbeam-lib/bitbeam-lib.scad>

module bbox4xAA(){
    cube_arm(10, skip_side=[1, 2, 3, 4, 5, 6, 7, 8]);

    translate([0, unit*9, 0])
        cube_arm(10, skip_side=[1, 2, 3, 4, 5, 6, 7, 8]);

    for (i=[0:3]){
        translate([12.5+i*15.6, 36, -3.2])
            cube([5, 64, 1.6], center=true);
        translate([12.4+i*15.6, 42, -3.2])
            cube([6, 53, 1.6], center=true);
    }
}

translate([4, 4, 4])
    bbox4xAA();
