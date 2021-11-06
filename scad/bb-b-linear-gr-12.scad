// NAME: Linear Rack Gear Beam 12
// CATEGORY: Gear Beam
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>

color("SkyBlue")
translate([-unit*5.5, 0, unit*0.5])
rotate([-90, 0, 0])
difference(){
    union(){
        cube_arm(12);
        translate([unit*5.5, 0, unit/2-edge/2])
            cube([unit*12, unit, edge], true);

        translate([-unit, 0, unit])
        rotate([90,0,0])
            linear_extrude(height=unit, center=true)
            for (i=[0:31])
                translate([unit+i*3-2.5, -unit*0.5, 0])
                    rotate([0, 0, 90])
                    polygon([[0, 1.5], [3, 1.5], [3, 1.],
                            [5, 0.3], [5, -0.3],
                            [3, -1.], [3, -1.5], [0, -1.5]]);
    }

    for (x=[-1, 1], y=[-1, 1])
        translate([unit*5.5+x*unit*6, y*unit*0.5, unit*0.25])
        rotate([0, 0, 45])
        cube([edge, edge, unit*1.5], true);
 }
