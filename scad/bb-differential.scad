// NAME: Differential Frame
// CATEGORY: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

color("DarkOrange")
intersection(){
    difference(){
        for (i = [-1, 1]){
            translate([0, i*unit*1.25, 0])
                ecube([unit*3, unit*0.5, unit], true);

            translate([i*unit*1.25, 0, 0])
                ecube([unit*0.5, unit*3, unit], true);
        }

        rotate([0, 90, 0])
            holes(1, h=3);
        rotate([90, 0, 0])
            holes(1, h=3);
        for (i=[-1, 1])
            translate([-unit, i*unit*1.25, 0])
            rotate([90, 0, 0])
            holes(3, h=0.5);

    }

    rotate([90, 0, 0])
        cylinder(d=unit*3-2, h=unit*3, $fn=120, center=true);
}
