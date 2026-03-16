// NAME: Geekservo Motor Cube 5x3x3.5
// CATEGORY: Motor
// LDRAW: 4

include <bitbeam-lib/bitbeam-lib.scad>

color("red")
translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, -unit*0.25, -unit*0.25])
                ecube([unit*5, unit*3.5, unit*0.5], true);
            translate([0, -unit, 0])
                ecube([unit*5, unit*2, unit], true);
            translate([unit*2, -unit*0.25, 0])
                ecube([unit, unit*3.5, unit], true);
            translate([0, unit*1.25, unit])
                ecube([unit*5, unit*0.5, unit*3], true);
            for (x=[-1, 1])
            translate([x*unit*2, -unit*0.5, unit])
                ecube([unit, unit, unit*3], true);
        }

    for(y=[0, -1])
        translate([-unit, -y*unit-unit*1.5, 0])
        rotate([90, 0, 0])
        holes(3);

    for(x=[0, 1])
        translate([-unit*2+x*unit*4, -unit*1.5, 0])
        rotate([90, 0, 90])
        holes(2+x);

    for (y=[0,1])
        translate([-unit*2, -unit*(0.5+y), 0])
        holes(5);

    translate([unit*2, unit*0.5, 0])
        holes(1);

    for (x = [-1, 1])
    translate([x*unit*2, -unit*0.5, unit*2])
        rotate([0, 90, 0])
        holes(2);

    for (z = [0, 1])
    translate([-unit*2, -unit*(0.75+0.25/2), unit*(1+z)])
        rotate([90, 0, 0])
        cylinder(d=5, h=unit*0.25+0.1, center=true);

    translate([unit*2, -unit*0.5, unit*2])
        rotate([90, 90, 0])
        holes(2);

    for (x = [1,4])
    translate([-unit*2+unit*x, unit*1.25, unit*2])
        rotate([0, 90, 90])
        holes(3, h=0.5);

    translate([0.5*unit, unit*1.25, unit*1.5])
        rotate([90, 0, 0])
        cylinder(d=hole, h=unit*0.51, center=true);

    translate([-2*unit, unit*0.5, unit*1.5])
        rotate([90, 0, 0])
        cylinder(d=hole, h=unit*2+0.1, center=true);
}
