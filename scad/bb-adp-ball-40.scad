// NAME: Adapter for Ball 40
// CATEGORY: Adapter

include <bitbeam-lib/bitbeam-lib.scad>

translate([0,0,unit/2])
{
    difference(){
        union(){
            cylinder(d=16, h=unit, center=true);
            rotate([0, 0, 90])
                translate([-unit, 0, -unit/4])
                cube_arm(3, h=0.5);

            // ball
            translate([0,0,unit+15])
                sphere(d=42, $fn=50);
        }

        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=hole, h=unit*1.01, center=true);
        }
        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                cylinder(d=unit, h=10);
        }

        translate([0,0,unit+15+1])
            sphere(d=40, $fn=50);
        translate([0,0,unit+16+12])
            cube(42.01, center=true);

    }
}
