// NAME: Kitronic Motor Driver
// COLOR: 2

include <bitbeam-lib/bitbeam-lib.scad>

mdbw = 67.4;
mdbh = 62;

// kitronic motor driver board http://www.kitronik.co.uk/5620 for micro:bit

module drv_mbkitronic(){
    difference(){
        color("green")
            cube([mdbw, mdbh, 1.6]);

        for (y=[0, 1]){
            for (x=[0, 1]){
                translate([4+x*(mdbw-8), 4+y*(41-8), -0.05])
                    cylinder(d=4, h=1.7);
            }
        }

        for (i=[0:21]){
            translate([10+i*2.54, mdbh-6, -0.05])
                cylinder(d=1, h=1.7);
        }
    }

    translate([4, 42, 0.01])
        color("black")
        cube([mdbw-8, 10, 16]);
}


translate([-unit/2+(unit*10-mdbw)/2+4-5*unit, unit/2+(unit*8-mdbh)/2+4-5*unit, 4])
    drv_mbkitronic();
