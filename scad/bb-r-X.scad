// NAME: Beam 8
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

module rails(size, center=true){
    rotate([90, 0, 90])
    linear_extrude(unit*size, center=center)
        polygon([
            [-unit/4+1, -unit/2], [unit/4-1, -unit/2],
            [unit/4-0.5, -unit/2+0.5], [unit/4-0.5, unit/2],
            [unit/4, unit/2+0.5], [unit/4, unit-0.5], [unit/4-0.5, unit],
            [-unit/4+0.5, unit], [-unit/4, unit-0.5], [-unit/4, unit/2+0.5],
            [-unit/4+0.5, unit/2], [-unit/4+0.5, -unit/2+0.5],
        ]);
}


translate([-11.5*unit, 0, -unit*0.5])
#cube_arm(24);

for (i=[0:4:20]){
    translate([(-10+i)*unit, -3.5*unit, unit*0.25])
        rotate([0, 0, 90])
        cube_arm(8, h=0.5, skip=[1,6]);
}

for (i=[-1, 1])
translate([0, (32/2+unit*0.25+0.25)*i, unit*0.5])
rails(21);
