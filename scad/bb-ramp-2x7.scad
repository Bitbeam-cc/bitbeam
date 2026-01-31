// NAME: Ramp 2x7
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, unit*0.5, unit/4])
color("green")
difference(){

    hull(){
        ecube([unit*7, unit, unit], true);
        translate([0, unit*-1, -unit/2+0.25])
            ecube([unit*7, unit, 0.5], true);
    }

    for(a=[0, 90])
        translate([-unit*3, 0, 0])
        rotate([a, 0, 0])
        holes(7);
}
