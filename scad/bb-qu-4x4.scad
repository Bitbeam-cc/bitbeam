// NAME: Quadrant 4x4
// CATEGORY: Wheel
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

color("DarkOrange")

difference(){
    translate([0, 0, unit*-0.5])
    rotate_extrude(angle=90, convexity = 10, $fn=200)
        polygon([
            [0, 0], [unit*4-0.5, 0], [unit*4,0.5],
            [unit*4, unit-0.5], [unit*4-0.5, unit], [0, unit]
        ]);
    
    for (i=[1:2])
        translate([unit*i-unit*0.5, unit*(2-i/2-0.5), 0])
        {
            cube([unit+0.01, unit*(3-i)+0.01  , unit+0.01], true);
            for (z=[-1,1])           
                translate([0, unit*(3-i)/2, z*unit*0.5])
                    rotate([45, 0, 0])
                    cube([unit, edge, edge], true);
               
            for (z=[-1,1])
                translate([unit*0.5, 0, z*unit*0.5])
                    rotate([0, 45, 0])
                    cube([edge, unit*(3-i), edge], true);   
        }

    for(z=[-1, 1]){
        translate([unit*3, 0, z*unit*0.5])
            rotate([45, 0, 0])
            cube([unit*2, edge, edge], true);
        
        translate([0, unit*3, z*unit*0.5])
            rotate([0, 45, 0])
            cube([edge, unit*2, edge], true);
    }

    for (i=[1:3])
        translate([unit*(i-0.5), unit*(3.5-i), 0]){
            holes(1);
        translate([0, unit*0.5, 0])
            rotate([90, 0, 0])
            holes(1, h=2);
        translate([unit*0.5, 0, 0])
            rotate([0, 90, 0])
            holes(1, h=2);
        }
    for (i=[1:4])
        translate([unit*(i-0.5), unit*(4.5-i), 0])
        holes(1);
}
