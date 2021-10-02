// NAME: Adapter for Ball 20
// CATEGORY: Adapter
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

color("DarkOrange")
translate([0,0,unit/2])
{
    difference(){
        union(){
            cylinder(d=16, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, -unit/4])
                cube_arm(3, h=0.5);

            // ball
            translate([0,0,unit+2])
                sphere(d=22, $fn=50);
        }

        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=unit, h=8);
        }

        translate([0,0,unit+2+1])
            sphere(d=20, $fn=50);
        translate([0,0,unit+2+11])
            cube(22.01, center=true);

    }
}
