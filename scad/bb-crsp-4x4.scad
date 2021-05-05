// NAME: Cyber Robot Speaker Holder 4x4
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>


module bb_crsp_4x4(){  
    difference(){
        cube([unit*4, unit*4, 5], center=true);
        for (i=[0:4]){
            rotate([0, 0, i*90])
            translate([unit*1.5, unit*1.5, 0])
                holes(1, 0.7);
        }
        
        translate([0, 0, -1.5])
            cylinder(d=29, h=4.1, $fn=60);
        translate([0, 0, -2.6])
            cylinder(d=2, h=1.2);
        for (i=[0:6]){
            rotate([0, 0, 360/6*i])
            translate([2, 2, -2.6])
                cylinder(d=2, h=1.2);
        }
        for (i=[0:12]){
            rotate([0, 0, 360/12*i])
            translate([4, 4, -2.6])
                cylinder(d=2, h=1.2);
        }
        for (i=[0:18]){
            rotate([0, 0, 360/18*i])
            translate([6, 6, -2.6])
                cylinder(d=2, h=1.2);
        }
        for (i=[0:24]){
            rotate([0, 0, 360/24*i])
            translate([8, 8, -2.6])
                cylinder(d=2, h=1.2);
        }
    }
}

//translate([0, 0, 2.5])
    bb_crsp_4x4();
