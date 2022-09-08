// NAME: Loom 8x3
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

color("DarkOrange")
difference(){
    union(){
        translate([unit*-3.5, 0,0])
            cube_arm(8, h=1, side_holes=false, skip=[for (i=[1:6]) i]);
         
        for (i=[-1, 1])   
            translate([unit*i*3.5, unit*-1, 0])
            rotate([0, 0, 90])
                cube_arm(2, h=1, skip_side=[1]);
        }
    
    for(i=[-unit*2.9:2:unit*3])
        hull(){
            translate([i, 0, 0])
                rotate([90, 0, 0])
                cylinder(d=0.2, h=unit+0.1, center = true);
            translate([i, 0, 4.1])
                rotate([90, 0, 0])
                cylinder(d=1, h=unit+0.1, center = true);
        }
}
