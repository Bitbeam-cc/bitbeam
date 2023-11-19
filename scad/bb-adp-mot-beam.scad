// NAME: Adapter for Motor Beam shaft
// CATEGORY: Adapter
// KEYWORDS: Motor
// LDRAW: 379

include <bitbeam-lib/bitbeam-lib.scad>

color("LightSlateGray")
translate([0,0,unit/2])
    difference(){
        union(){
            ecylinder(d=unit*2, h=unit, center=true);
            rotate([0, 0, 90])
                intersection(){
                    translate([-unit, 0, 0])
                        cube_arm(3, side_holes=false);
                    translate([0, 0, -unit*0.5])
                        ecylinder(unit*3, unit);
                }
        }

        // shaft
        cube(unit+0.1, true);

        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.8)])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }
            
        rotate([0, 90, 0])
            holes(1, h=2);

        for (y=[-1, 1]){
            translate([0, unit*y, 0])
                holes(1);
                
        }
    }
