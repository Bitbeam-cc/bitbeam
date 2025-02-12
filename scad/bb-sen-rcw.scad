// NAME: RCW 001 Ultrasound Sensor Box
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

color("YellowGreen"){
    difference(){
        for(x=[-1, 1]){
            for(y=[-1, 1]){
                translate([x*27/2, y*13.5/2, -2.3/2])
                    cylinder(d=5, h=3, center=true);
            }
        }
        for(x=[-1, 1]){
            for(y=[-1, 1]){
                translate([x*27/2, y*13.5/2, -2.3/2])
                    cylinder(d=1.5, h=3.1, center=true);
            }
        }
    }

    difference(){
        union(){
            ecube([unit*4, unit*3, unit], center=true);
            translate([0, -unit, 0])
                ecube([unit*6, unit, unit], center=true);
            translate([0, unit, 0])
                ecube([unit*6, unit, unit], center=true);
            translate([-unit, -unit*1.5, 0])
                ecube([unit, unit*2, unit], center=true);
            translate([unit, -unit*1.5, 0])
                ecube([unit, unit*2, unit], center=true);
        }

        translate([0, 0, 0.76])
            cube([32.01, unit*3-3, unit-1.5], center=true);

        translate([0, unit+0.01, -unit/2+2.49])
            cube([12, 8, 5], center=true);

        translate([-unit, -unit*2, 0])
            holes(3, skip=[1]);
        for (x=[-1, 1])
            translate([x*unit, -unit*2, 0])
                rotate([0, 90, 0])
                holes(1);

        for (x=[-1, 1]){
            translate([x*unit*2.5, -unit, 0])
                rotate([0, 0, 90])
                holes(3, skip=[1]);

            for (y=[-1, 1])
                translate([x*unit*2.5, y*unit, 0])
                    rotate([90, 0, 0])
                    holes(1);
        }
    }
}
