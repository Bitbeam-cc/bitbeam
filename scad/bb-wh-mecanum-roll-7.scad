// NAME: Roll for Beam Mecanum Wheel 7
// CATEGORY: Wheel
// COLOR: 0

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>

module half_roll(){
    rotate_extrude($fn=60)
        projection()
        rotate([-45-19+90, 0,0])
        intersection(){
            rotate([45, 0, 0])
                cylinder(h=unit*5, d=14, center=true);

            translate([unit*7/2-7, 0, 0])
                cylinder(h=unit*2, d=unit*7, center=true, $fn=200);

            rotate([45+19-90, 0, 0])
                rotate([0, 0, 90])
                    cube([unit*1.2, unit, unit]);

        }
}

module roll(){
    difference(){
        for (i =[0, 1])
            mirror([0, 0, i])
                half_roll();

        cylinder(d=3.6, h=unit*3+0.1, center=true);


        for (i=[0:360/7:360])
            rotate([0, 0, i])
            translate([3.5, 0, 9.2])
                cylinder(d=1, h=0.5, $fn=10);
    }
}

color("#404040")
    roll();
