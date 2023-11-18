include <../bitbeam-lib/bitbeam-lib.scad>

module shaft_hole(size){
    difference(){
        cylinder(d=4.6, h=size*unit+0.1, center=true);
        for (y = [-1, 1])
            translate([0, 4*y, 0])
            cube([4.1, 4.1, size*unit+0.2], true);
    }
    for (z=[-1, 1])
        translate([0, 0, z*(-size*unit-0.1)/2])
            mirror([0, 0, -z+1])
            cylinder(d1=hole+0.5, d2=4, h=0.5);
}

shaft_hole(1);

module plus_hole(size){
    cube([4.9, 2, unit*size+0.1], center=true);
    cube([2, 4.9, unit*size+0.1], center=true);
    
    for (z=[-1, 1])
        translate([0, 0, z*(-size*unit-0.1)/2])
            mirror([0, 0, -z+1])
            cylinder(d1=hole+0.5, d2=3, h=0.5);
}

difference(){
    cylinder(d=unit*2, h=unit, center=true);
    plus_hole(1);
}

module cap(){
    difference(){
        cylinder(d=5.2, h=edge*2);
        translate([0, 0, -0.01])
        cylinder(d1=5, d2=4.6, h=edge+0.01);
    }

}
