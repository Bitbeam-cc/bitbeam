// NAME: Beam Mecanum Wheel 9
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <bb-wh-mecanum-roll-9.scad>
use <sc-M3x25.scad>

module m_profile(size){
    rotate_extrude($fn=60)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit-0.5, 0], [unit,0.5],
            [unit, unit*0.25-0.5], [unit-0.5, unit*0.25], [0, unit*0.25]
        ]);
}

module m_wheel(){
    difference(){
        union(){
            m_profile(5.5);
            wheel(5.5);

            for (i=[0:360/10:360])
                hull()
            {
                rotate([0, 0, i])
                    translate([30, 0, unit*1.75-1.5])
                    rotate([45, 0, 0]){
                        translate([0, 0, -11.3])
                            cylinder(d=8, h=2, center=true);
                        translate([-6.3, -1.7, -11.3])
                            cube([10, 9.9, 2], center=true);
                    }

            }
        }
        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, unit*0.5])
                holes(5/2.1);
        }

        translate([0, 0, -10])
            cylinder(d=unit*9, h=10, $fn=11);

        for (i=[0:360/10:360])
            rotate([0, 0, i])
            translate([30, 0, unit*1.75-1.5])
            rotate([45, 0, 0]){
                cylinder(d=2.9, h=40, center=true);
                //#cube([8, 8, 24.6], true);
            }


    }
}

//%cylinder(d=unit*9, h=unit*3, $fn=160);
translate([0, 0, unit*1.5])
for (i=[0:360/10:360])
    rotate([0, 0, i])
    translate([30, 0, 0])
    rotate([45, 0, 0]){
        color("#303030")
            roll();
        color("silver")
            screw_m3(25);
    }

!color("gray")
    m_wheel();
translate([0, 0, unit*3])
    rotate([180, 0, 0])
    %m_wheel();
translate([0, 0, unit*2])
    rotate([180, 0, 0])
    %wheel(5);
