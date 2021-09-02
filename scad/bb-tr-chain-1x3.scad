include <bitbeam-lib/bitbeam-lib.scad>

$fn=60;

shift=12.6/2;       // track wheel X/6
//shift=25.1/2;     // track wheel X/3
// minimum wheel size 4 = maximum angle between track pieces is 45

module socket(){
    intersection(){
        union(){
            translate([0, 0, -8/2-7/3.8])
                cylinder(d1=unit*1.5, d2=unit, h=7/1.95, center=true);
            translate([0, 0, +8/2+7/3.8])
                cylinder(d2=unit*1.5, d1=unit, h=7/1.95, center=true);
            cylinder(d=unit, h=15, center=true);
        }
        cylinder(d=unit*1.3, h=15, center=true);
        hull(){
            cylinder(d=unit, h=15, center=true);
            translate([unit, unit*0.5, 0])
                cylinder(d=unit*2, h=15, center=true);

        }
    }
}

module track(){
    translate([unit*0.25,0,0])
        cube([unit/2, 24, 1.6], true);

    hull(){
        translate([4, 0, 0])
            cube([0.01, 15, 1.6], true);
        translate([shift, 0, 0])
            cube([0.01, 15, 1.6], true);
        }

    translate([shift, 0, hole/2+0.8])
        rotate([90, 0, 0])
        difference(){
            rotate([0, 0, 45])
                socket();

            cylinder(d=hole, h=15.1, center=true);

            hull(){
                translate([0, -0.4, 0])
                    cylinder(d=4.1, h=24, center=true);
                translate([-4.5, -0.4, 0])
                    cylinder(d=4.1, h=24, center=true);
            }
            hull(){
                translate([-4.5, -0.4, 0])
                    cylinder(d=4.1, h=24, center=true);
                translate([-4.5, 5, 0])
                    cylinder(d=4.1, h=24, center=true);
            }

            translate([0, -4.3-1.7, 0])
                cube([unit*1.5, 4, 15.1], true);
        }

    translate([-shift, 0, 4.7/2+1])
        rotate([90, 0, 0])
        cylinder(d=4.3, h=24, center=true);

    for(y=[-1, 1])
        hull(){
            translate([-shift, y*(24/2-2), 4.7/2+1])
                rotate([90, 0, 0])
                cylinder(d=4.3, h=4, center=true);
            translate([-1, y*(24/2-2), 0])
                cube([3, 4, 1.6], true);
        }
}

track();
%translate([shift*2+0.4, 0, 5.2])
    rotate([0, -45, 0])
    track();
%translate([-shift*2, 0, 0])
    track();
