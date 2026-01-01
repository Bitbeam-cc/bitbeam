// NAME: Linear Rack Beam 9 Thin
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <gr-12-shaft.scad>

color("SkyBlue")
translate([-unit*4, unit*0.25, unit*0.5])
rotate([-90, 0, 0])
difference(){
    union(){
        for (i = [0, 8])
        translate([i*unit, 0, unit*0.25])
            cube_arm(1);
        translate([unit*4, 0, 0])
            ecube([unit*9, unit, unit*0.5], true);

        translate([-0.5, 0, unit*0.5])
        rotate([90,0,0])
            render(convexity = 2)
            linear_extrude(height=unit, center=true)
            for (i=[0:18])
                translate([unit+i*3-2.5, -unit*0.5, 0])
                    rotate([0, 0, 90])
                    polygon([[0, 1.5], [3, 1.5], [3, 1.0],
                             [5, 0.3], [5, -0.3],
                             [3, -1.], [3, -1.5], [0, -1.5]]);
    }

    for (z=[-1, 1])
        translate([unit*4, z*unit*0.5, unit*0.25+3])
        rotate([45, 0, 0])
        cube([7*unit, 0.5, 0.5], true);

    for (i=[0, 8], r=[0, 90])
        translate([i*unit, 0, unit*0.25])
        rotate([r, 0, 0])
        holes(1);
 }

%translate([0, unit*1.5, 0])
    rotate([0, 0, 360/12/4])
    gear_12();
