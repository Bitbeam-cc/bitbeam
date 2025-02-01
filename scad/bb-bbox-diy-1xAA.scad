// NAME: DIY Batery Box 1xAA 8x10
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module battery_AA(center=false){
    // 14.5 x 50.5
    translate([0, 0, 0.5 - (center ? 50.5/2 : 0)]){
        //color("PaleGreen")
        cylinder(d=14.5, h=48.5);

        // plus
        translate([0, 0, 48.5])
            //color("silver")
            cylinder(d=5, h=1.5);
        // minus
        translate([0, 0, -0.5])
            //color("silver")
            cylinder(d=10, h=0.6);
    }
}

module unipolar_contact(){
    cube([14, 12.5, 1], true);
    translate([0, -5, -0.25])
        cube([4, 10, 0.5], true);
    hull(){
        translate([0, 0, 0])
            cylinder(d=6, h=5);
        translate([0, 5, 0])
            cylinder(d=6, h=5);
    }
}

module bipolar_contact(){
    cube([29.2, 12.5, 1], true);
    for (x = [0, 15]){
        translate([x-30/4, -5, -0.25])
            cube([4, 10, 0.5], true);
        hull(){
            translate([x-30/4, 0, 0])
                cylinder(d=6, h=5);
            translate([x-30/4, 5, 0])
                cylinder(d=6, h=5);
        }
    }
}

color("YellowGreen")
translate([0, 0, unit*0.5])
difference(){
    union(){
        ecube([unit*2, unit*10, unit], true);
        translate([0, 0, 1.5])
            ecube([unit*2, unit*8, unit+3], true);
    }
    for(y = [-1, 1])
        translate([-unit*3.5, y*unit*4.5, 0])
        holes(8);

    translate([0, 0, 30/2-unit/2+4])
        rotate([0, 90, 0])
        cylinder(d=30, h=unit*8+0.1, center=true);


    translate([0, 0, unit/2+1]){
        rotate([90, 0, 0])
        cylinder(d=14.8, h=53, center=true);
    }

    for (i = [-1,1]){
        translate([0, 56/2*i, 15/2-unit/2+1])
            rotate([90, 0, (i < 0 ? 180: 0)])
            unipolar_contact();
    }
    *for (i = [-1,1]){
        translate([0, 50/2*i, 11/2-unit/2+1])
            rotate([90, 0, (i < 0 ? 180: 0)])
            unipolar_contact();
    }
}


%translate([0, 0, 15/2+1.5])
    rotate([90, 0, 0])
    battery_AA(true);
