// NAME: Hubcup size 4 for Plus Shaft
// CATEGORY: Wheel
// KEYWORDS: Wheel
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

module plus_hole(size){
    cube([4.9, 2, unit*size+0.1], center=true);
    cube([2, 4.9, unit*size+0.1], center=true);

    translate([0, 0, (size*unit-0.8)/2])
        cylinder(d2=hole+0.5, d1=3, h=0.5);
}

color("LightSlateGray")
difference(){
        union(){
            intersection(){
                cylinder(d1=unit*3, d2=unit*4, h=unit*0.5, $fn=90);
                translate([0, 0, 0])
                    ecylinder(unit*4, unit*0.5);
            }
            translate([0, 0, unit/2])
                ecube([unit, unit, unit], true);
        }

        translate([0, 0, unit*0.75])
            rotate([0, 0, 90])
        plus_hole(0.5);
    }
