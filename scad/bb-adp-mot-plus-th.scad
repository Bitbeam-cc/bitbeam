// NAME: Thin Adapter for Motor Plus Shaft
// CATEGORY: Adapter Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

module plus_shaft(h){
    cube([4.9, 2, unit*h], center=true);
    cube([2, 4.9, unit*h], center=true);
}

color("LightSlateGray")
translate([0,0,unit/2])
    difference(){
        union(){
            cylinder(d=16, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, -unit/4])
                cube_arm(3, h=0.5);
        }

        // shaft
        plus_shaft(unit*1.6);

        // nuts
        for (y=[-1, 1]){
            translate([y*4, 0, 0])
                hull(){
                    for (z=[0, unit/2]){
                        translate([0, 0, z])
                            rotate([0, 90, 0])
                            cylinder(d=6.2, $fn=6, h=2.7, center=true);
                    }
                }
        }
        rotate([0, 90, 0])
            cylinder(d=3, h=16.1, center=true);


        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=unit, h=unit*0.51);
        }
    }
