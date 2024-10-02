// NAME: Hubcup for 4.5x3.8 Shaft
// CATEGORY: Wheel
// KEYWORDS: Wheel
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

module shaft_hole(size){
    difference(){
        cylinder(d=4.6, h=size*unit+0.1, center=true);
        for (y = [-1, 1])
            translate([0, 4*y, 0])
            cube([4.1, 4.1, size*unit+0.2], true);
    }
}

color("LightSlateGray")
difference(){
        union(){
            intersection(){
                cylinder(d1=unit*2, d2=unit*3, h=unit*0.5, $fn=90);
                translate([0, 0, 0])
                    ecylinder(unit*3, unit*0.5);
            }
            translate([0, 0, unit/2])
                ecube([unit, unit, unit], true);
        }

        translate([0, 0, unit*0.75])
            rotate([0, 0, 90])
            shaft_hole(0.5);
    }
