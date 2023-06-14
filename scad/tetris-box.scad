// NAME: Tetris box
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
//include <bb-qu-8x8.scad>

//translate([-1, -1, unit*-0.5])
//translate([1, 1, 1])
translate([unit*9, 0, 0])
color("DarkOrange")
difference(){
    union(){
        rotate_extrude(angle=90, convexity = 10, $fn=200)
            translate([unit*8+3, 0, 0])
            polygon([
                [0, 0], [0.5, 0], [1, 0.5],
                [1, unit*3+2-0.5], [0.5, unit*3+2], [0, unit*3+2]
            ]);
        
        rotate_extrude(angle=90, convexity = 10, $fn=50)
            square([unit*8+3.5, 0.56]);
        
        
        translate([unit*4+1.75, 0.5, unit*1.5+1])
            cube([unit*8+3.5, 1, unit*3+2], true);
        translate([0.5, unit*4+1.75, unit*1.5+1])
            cube([1, unit*8+3.5, unit*3+2], true);
    }
    
    for (z=[0, 1])
    translate([unit*4+2, 0, z*(unit*3+2)])
        rotate([45, 0, 0])
        cube([unit*8+4, edge, edge], true);
    
    for (z=[0, 1])
    translate([0, unit*4+2, z*(unit*3+2)])
        rotate([0, 45, 0])
        cube([edge, unit*8+4, edge], true);
    
    for (x=[0, 1], y=[0, 1])
    translate([x*(unit*8+4), y*(unit*8+4), unit*1.5+1])
        rotate([0, 0, 45])
        cube([edge, edge, unit*3+2], true);
}

color("DarkOrange")
difference(){
    union(){
        rotate_extrude(angle=90, convexity = 10, $fn=200)
            translate([unit*8+5.5, 0, 0])
            polygon([
                [0, 0], [0.5, 0], [1, 0.5],
                [1, unit-0.5], [0.5, unit], [0, unit]
            ]);
        
        rotate_extrude(angle=90, convexity = 10, $fn=50)
            square([unit*8+6, 0.56]);
        
        
        translate([unit*4+3, 0.5, unit*0.5])
            cube([unit*8+6, 1, unit], true);
        translate([0.5, unit*4+3, unit*0.5])
            cube([1, unit*8+6, unit], true);
    }
    
    for (z=[0, 1])
    translate([unit*4+3.5, 0, z*unit])
        rotate([45, 0, 0])
        cube([unit*8+7, edge, edge], true);
    
    for (z=[0, 1])
    translate([0, unit*4+3.5, z*unit])
        rotate([0, 45, 0])
        cube([edge, unit*8+7, edge], true);
    
    for (x=[0, 1], y=[0, 1])
    translate([x*(unit*8+6.5), y*(unit*8+6.5), unit*0.5])
        rotate([0, 0, 45])
        cube([edge, edge, unit], true);
}
