include <bitbeam-lib/bitbeam-lib.scad>

module switch(){
    color([0.2, 0.2, 0.2])
        cube([13, 20, 15], center=true);
    translate([0, 0, 8.5])
        color([0.2, 0.2, 0.2])
        cube([15, 21.5, 2], center=true);
    translate([0, 0, -11])
        color([0.2, 0.2, 0.2, 0.5])
        cube([13, 19, 7], center=true);
    translate([0, 0, 9])
        rotate([10, 0, 0])
        color([0, 0, 0.8])
        cube([10, 15, 3], center=true);


}

module bb_switch(){
    difference(){
        cube_plate(2, 6, holes=[0, 2]);
        translate([unit*0.5, unit*2.5, 0])
            cube([13, 20, unit*1.01], center=true);
        translate([unit*0.5, unit*2.5, unit*0.5-1])
            cube([15, 22, 2.01], center=true);
    }
}


//switch();
bb_switch();
