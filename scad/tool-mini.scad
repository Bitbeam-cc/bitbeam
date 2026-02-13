// NAME: Tool MINI
// LDRAW: 379
// CATEGORY: Support

include <bitbeam-lib/bitbeam-lib.scad>

module simple(size){
    difference(){
        rotate([0, 0, 360/25/2])
            ecylinder(d=4, h=unit*size, center=true, $fn=25);

        translate([0, 4.8/2+0.9, 0])
            cube([unit, 3, unit*size+0.1], center=true);
        translate([0, -4.8/2-0.9, 0])
            cube([unit, 3, unit*size+0.1], center=true);
    }
}

color("DarkOrange"){
    translate([0, -unit*1.5, 4.8/2-0.6])
        rotate([90, 0, 0])
        simple(3.5);

    hull(){
        #translate([0, unit*0.5, 4.8/2-0.6])
            rotate([90, 0, 0])
            simple(1);
        translate([0, unit*2.5, (unit-0.5)/2])
            ecube([unit-0.5, unit-0.5, unit-0.5], true);
    }


    translate([0, unit*2.5, (unit-0.5)/2])
        ecube([unit*5, unit-0.5, unit-0.5], true);
}
