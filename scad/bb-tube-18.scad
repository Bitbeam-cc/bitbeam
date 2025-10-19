// NAME: Tube holder 18mm
// CATEGORY: Support
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>

module sector(){
    d = 3;
    rotate([0, 0, 150])
    rotate_extrude(angle=240, $fn=100)
        translate([21/2, 0, 0])
            polygon([
                [-d/2,-unit/2+0.35], [-d/2+0.35, -unit/2],
                [d/2-0.35, -unit/2], [d/2, -unit/2+0.35],
                [d/2, unit/2-0.35], [d/2-0.35, unit/2],
                [-d/2+0.35, unit/2], [-d/2, unit/2-0.35],
            ]);
}

translate([0, unit*0.5, unit*0.5])
color("YellowGreen"){
    difference(){
        union(){
            translate([0, 18/2+unit*0.5, 0])
                sector();
            ecube([unit*3, unit, unit], true);
        }

        for (a = [0, 90])
            rotate([a, 0, 0])
            translate([unit*-1, 0, 0])
                holes(3);

    }
}

translate([0, 26/2+unit*0.5, 0])
    %cylinder(d=18, h=10);
