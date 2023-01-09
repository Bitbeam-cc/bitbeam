// NAME: Mecanum Wheel 7A
// CATEGORY: Wheel
// LDRAW: 8

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/wheel.scad>
use <bb-wh-mecanum-roll-7.scad>
use <sc-M3x25.scad>

module m_profile(size){
    rotate_extrude($fn=60)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit-0.5, 0], [unit,0.5],
            [unit, unit*0.25-0.5], [unit-0.5, unit*0.25], [0, unit*0.25]
        ]);
}

module round_text(size, text = ["m", "-", "B", "I", "T", "B", "E", "A", "M"]){
    fsize = size < 10 ? size/1.5 : 3;

    for (i = [0:len(text)])
        rotate([0, 0, -100/len(text)*i])
        translate([unit*size-unit*2.3, 0, 0])
        linear_extrude(1, center=true, convexity=10)
            rotate([0, 0, 270])
            text(text[i], font = "Sans", size=fsize,
                halign="center", valign="center");
}

module m_wheel(text){
    difference(){
        union(){
            m_profile(3.5);
            wheel(3.5, false);

            for (i=[0:360/7:360])
                hull()
            {
                rotate([0, 0, i])
                    translate([21, 0, unit*1.75-1.5])
                    rotate([45, 0, 0]){
                        translate([0, 0, -11.3])
                            cylinder(d=8, h=2, center=true);
                        translate([-6.4, -1.7, -11.3])
                            cube([10, 9.9, 2], center=true);
                    }

            }
        }
        
        rotate([0, 0, 0])
            translate([0, 0, 0])
            mirror([1, 1, 0])
            round_text(4);

        rotate([0, 0, 180])
            translate([0, 0, 0])
            mirror([1, 1, 0])
            round_text(4);
        
        rotate([0, 0, 90+45])
            translate([0, 0, 0])
            mirror([1, 1, 0])
            round_text(4, text);
        rotate([0, 0, 270+45])
            translate([0, 0, 0])
            mirror([1, 1, 0])
            round_text(4, text);
        
        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, unit*0.5])
                holes(3/2.1);
        }

        translate([0, 0, -10])
            cylinder(d=unit*7, h=10, $fn=7);

        for (i=[0:360/7:360])
            rotate([0, 0, i])
            translate([21, 0, unit*1.75-1.5])
            rotate([45, 0, 0]){
                cylinder(d=2.9, h=40, center=true);
                //#cube([8, 8, 24.6], true);
            }

        translate([unit*2-1.3, 0, 3])
            rotate([-11, -11, 45])
            cylinder(d1=3, d2=0.5, h=3, $fn=4);
    }
}

//%cylinder(d=unit*7, h=unit*3, $fn=160);
translate([0, 0, unit*1.5])
for (i=[0:360/7:360])
    rotate([0, 0, i])
    translate([21, 0, 0])
    rotate([45, 0, 0]){
        color("#303030")
            roll();
        color("silver")
            screw_m3(25);
    }

!color("gray")
    m_wheel(["A"]);
translate([0, 0, unit*3])
    rotate([180, 0, 0])
    %m_wheel(["A"]);
translate([0, 0, unit*2])
    rotate([180, 0, 0])
    %wheel(3);
