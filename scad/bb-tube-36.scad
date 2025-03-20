// NAME: Tube holder 36mm
// CATEGORY: Support
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

module sector(){
    d = 3;
    rotate([0, 0, 150])
    rotate_extrude(angle=240, $fn=100)
        translate([39/2, 0, 0])
            polygon([
                [-d/2,-unit/2+0.35], [-d/2+0.35, -unit/2],
                [d/2-0.35, -unit/2], [d/2, -unit/2+0.35],
                [d/2, unit/2-0.35], [d/2-0.35, unit/2],
                [-d/2+0.35, unit/2], [-d/2, unit/2-0.35],
            ]);
}

translate([0, unit*0.5, unit*0.5])
color("YellowGreen")
    translate([-unit*2, 0, 0]){
        translate([unit*2, 39/2+unit*1.5, 0])
        sector();
        cube_t(5, 2, h=1);
    }

translate([0, 39/2+unit*2, 0])
    %cylinder(d=36, h=10);
