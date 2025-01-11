// NAME: Kitronic Motor Driver Box
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>
use <drv-mbkitronic.scad>

// same values from drv-mbkitronic.scad
mdbw = 67.4;
mdbh = 62;

module bb_drv_mbkitronic(){
    difference(){
        translate([-unit/2, unit/2, -unit*0.5])
            ecube([unit*10, unit*8, unit*0.25]);

        translate([-unit/2+(unit*10-mdbw)/2, (unit*8-mdbh)/2+mdbh-6, -unit*0.5-0.05])
            cube([mdbw, 8, 2.1]);

        translate([-unit/2+(unit*10-mdbw)/2, unit/2+(unit*8-mdbh)/2, -unit*0.5])
            for (y=[0, 1]){
                for (x=[0, 1]){
                    translate([4+x*(mdbw-8), 4+y*(41-8), -0.05])
                        cylinder(d=4, h=2.1);
                }
            }
    }

    translate([-unit/2, unit*0.375, -unit*0.5])
        ecube([unit*0.5, unit*8.25, unit*0.5]);
    translate([-unit/2+unit*9.5, unit*0.375, -unit*0.5])
        ecube([unit*0.5, unit*8.25, unit*0.5]);

    for (y=[0, 1]) {
        for (x=[0, 1]) {
            translate([x*unit*(8-y), y*unit*9, 0])
                cube_arm(2+y, side_holes=false);
        }
    }
}


translate([4-5*unit, 4-5*unit, 4])
    color("YellowGreen")
    bb_drv_mbkitronic();

translate([0, 0, 4])
    %drv_mbkitronic();
