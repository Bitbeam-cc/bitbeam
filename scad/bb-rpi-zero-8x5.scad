// NAME: RaspberryPi Zero Beam 8x5
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

size = 70;

module bb_drv_mbkitronic(){
    difference(){
        union(){
            translate([-unit*4 , -unit*3, -unit*0.5])
                ecube([unit*8, unit*6, unit*0.25]);
            translate([0, unit*2.5, 0])
                ecube([unit*8, unit, unit], true);
            translate([unit*0.5, -unit*2.5, 0])
                ecube([unit, unit, unit], true);
        };
        
        translate([-unit*3.5, unit*2.5, 0]){
            holes(8);
            rotate([90, 0, 0])
                holes(8);
        }
        
        translate([-unit*3.5, -unit*2.5, 0])
            holes(8);
        translate([unit*0.5, -unit*2.5, 0])
            rotate([90, 0, 0])
                holes(1);
    }
    
    for (x=[-29, 29], y=[23/2, -23/2]) {
        translate([x, y, -unit*0.5])
            cylinder(d=2.4, h=7.5);
        translate([x, y, -unit*0.5])
            cylinder(d=5.2, h=6.0);
    }
}

translate([0, 0, 4])
    color("YellowGreen")
    bb_drv_mbkitronic();
