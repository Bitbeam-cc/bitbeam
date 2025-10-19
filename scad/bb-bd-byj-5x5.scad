// NAME: 28BYJ-48 Driver Board Beam 5x5
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module bb_bd_28byj(){
    difference(){
        union(){
            for (y=[-1, 1])
                translate([0, y*(2*unit-3/2), 0])
                    ecube([6*unit, unit+3, unit], true);

            translate([0, 0, -unit/2+1])
                ecube([6*unit, 5*unit, 2], true);
        }

        hull(){
            for (y=[-1, 1])
                translate([2, y*10.7, 1])
                    rotate([45, 0, 0])
                    cube([48, 1.3, 1.3], true);
        }

        for (y=[-1, 1])
            translate([-2.5*unit, y*2*unit, 0]){
                holes(6);
                rotate([90, 0, 0])
                    holes(6);
            }
        translate([19.5, 11.5, 0])
            cylinder(d=2.8, h=unit+0.1, center=true);
    }
}

translate([0, 0, unit/2])
    color("YellowGreen")
    bb_bd_28byj();

%translate([-2, 0, 5])
    cube([40, 21.5, 1.7], true);
