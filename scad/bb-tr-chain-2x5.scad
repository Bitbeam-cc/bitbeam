// NAME: Track Chain 2x5
// CATEGORY: Wheel
// COLOR: 0

include <bitbeam-lib/bitbeam-lib.scad>

$fn=60;

shift=12.6/2;       // track wheel X/6
// minimum wheel size 4 = maximum angle between chain pieces is 45

module socket(){
    intersection(){
        union(){
            translate([0, 0, -unit*1.5-7/3.8])
                cylinder(d1=unit*1.5, d2=unit, h=7/1.95, center=true);
            translate([0, 0, unit*1.5+7/3.8])
                cylinder(d2=unit*1.5, d1=unit, h=7/1.95, center=true);

            translate([0, 0, -7/3.8])
                cylinder(d2=unit*1.5, d1=unit, h=7/1.9, center=true);
            translate([0, 0, 7/3.8])
                cylinder(d1=unit*1.5, d2=unit, h=7/1.9, center=true);
            cylinder(d=unit, h=unit*4-1, center=true);
        }
        cylinder(d=unit*1.3, h=unit*4-1, center=true);
        hull(){
            cylinder(d=unit, h=unit*4-1, center=true);
            translate([unit, unit*0.5, 0])
                cylinder(d=unit*2, h=unit*4-1, center=true);
        }
    }
}

module track(){
    translate([unit*0.25,0,0])
        cube([unit*0.5, unit*5, 1.6], true);

    hull(){
        translate([4, 0, 0])
            cube([0.01, unit*4-1, 1.6], true);
        translate([shift, 0, 0])
            cube([0.01, unit*4-1, 1.6], true);
        }

    translate([shift, 0, hole/2+0.8])
        rotate([90, 0, 0])
        difference(){
            rotate([0, 0, 45])
                socket();

            cylinder(d=hole, h=unit*4, center=true);

            hull(){
                translate([0, -0.4, 0])
                    cylinder(d=4.1, h=unit*5, center=true);
                translate([-4.5, -0.4, 0])
                    cylinder(d=4.1, h=unit*5, center=true);
            }
            hull(){
                translate([-4.5, -0.4, 0])
                    cylinder(d=4.1, h=unit*5, center=true);
                translate([-4.5, 5, 0])
                    cylinder(d=4.1, h=unit*5, center=true);
            }

            translate([0, -4.3-1.7, 0])
                cube([unit*1.5, 4, unit*4], true);
        }

    translate([-shift, 0, 4.7/2+1])
        rotate([90, 0, 0])
        cylinder(d=4.3, h=unit*5, center=true);

    for(y=[-1, 1]){
        hull(){
            translate([-shift, y*(unit*5/2-2), 4.7/2+1])
                rotate([90, 0, 0])
                cylinder(d=4.3, h=unit*0.5, center=true);
            translate([0, y*(unit*4/2+unit*0.25), 0])
                cube([0.1, unit*0.5, 1.6], true);
            translate([-6, y*(unit*4.5/2+unit*0.25)-y*0.05, 0])
                rotate([90, 0, 0])
                cylinder(d=1.6, h=0.1, center=true);
        }
    }
}

color("#404040")
track();
%translate([shift*2+0.4, 0, 5.2])
    rotate([0, -45, 0])
    track();
%translate([-shift*2, 0, 0])
    track();
