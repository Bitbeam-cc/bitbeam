// NAME: Beam 5 for Micro Switch 20mm
// CATEGORY: Electric
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("YellowGreen")
translate([0, unit/2, unit/2])
{
    for (x = [-2, 2])
        translate([unit*x, 0, 0])
            cube_arm(1);

    difference(){
        translate([0, 0, -unit/2+0.8])
            ecube([unit*3+2, unit, 1.6], true);

        for (x=[-1, 1])
            translate([x*9.5/2, -unit/2+2.5, -unit/2+1])
            cylinder(d=2, h=2.1, center=true);
    }
}

%translate([0, unit*0.5+2, 6.4/2+1.6])
    cube([20, 12, 6.4], true);

%translate([-9, 10, 1.6])
    rotate([0, 0, 30])
    cube([20, 1, 6.4]);
