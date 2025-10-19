// NAME: Funduino IR Line Tracker Beam
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module ir_line_tracker(){
    difference(){
        cube([69, 28, 2], true);
        for(x=[-1, 1]){
            translate([x*69/2, 28/2, 0])
            rotate([0, 0, 45])
                cube([8, 8, 2.1], true);

            translate([x*(66.8-3)/2, -28/2+4+1.5, 0])
                cylinder(d=3, h=2.1, center=true);
        }
    }

    // old and new variant
    translate([0, -28/2, 0])
        cube([15, 9, 12], true);

}


module bb_bd_filt(){
    difference(){
        for (x=[-1, 1]){
            translate([x*unit*4, unit*2.25-0.5, -1]){
                ecube([unit, unit*3+5, 6], true);
                hull(){
                    translate([x*(-unit+0.5), -unit*1.25-0.5, 0])
                        ecube([unit, unit, 6], true);
                    translate([0, -unit*0.5, 0])
                        ecube([unit, unit, 6], true);
                }
            }
        }

        for(x=[-1, 1]){
            translate([x*unit*4, 0, 0])
            rotate([90, 0, 0])
                holes(1);

            translate([x*(66.8-3)/2, unit*2.25-28/2+4+1.5, -1])
                cylinder(d=2.8, h=6.1, center=true);
            translate([x*(54-3)/2, unit*2.25-28/2+4+0.5, -1])
                cylinder(d=2.8, h=6.1, center=true);
        }

        translate([0, 18, 2.1])
            ecube([unit*9.5, 13, 4], true);
    }

    difference(){
        translate([-unit*4, 0, 0])
            cube_arm(9, skip=[3, 4, 5], skip_side=[3, 4, 5]);

        translate([0, 0, -unit/2+4/2])
            ecube([16, unit+1, 5], true);
    }
}

translate([0, unit/2, unit/2])
    color("YellowGreen")
    bb_bd_filt();

*%translate([0, unit*3-2, unit-1])
    ir_line_tracker();
