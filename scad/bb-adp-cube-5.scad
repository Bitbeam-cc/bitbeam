// NAME: Thin Adapter for Beam x 5
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

color("LightSlateGray")
translate([0,0,unit/2])
    union(){
        translate([0, 0, -unit*0.5])
            ecylinder(unit*2, unit*0.5-0.2);
        rotate([0, -90, 0])
            cube_arm(5, skip=[0,1], skip_side=[0,1]);
    }
