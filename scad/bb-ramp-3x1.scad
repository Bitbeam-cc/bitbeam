// NAME: Ramp 3x1
// CATEGORY: Plate
// LDRAW: 2

include <bitbeam-lib/bitbeam-lib.scad>

translate([0, 0, unit/4])
color("green")
difference(){

    hull(){
        ecube([unit, unit, unit], true);
        translate([0, unit*-2, -unit/2+0.25])
            ecube([unit, unit, 0.5], true);
    }

    for(a=[0, 90])
        rotate([a, 0, 0])
        holes(1);
}
