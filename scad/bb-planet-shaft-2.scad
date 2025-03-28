// NAME: Planet Shaft 2
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8-shaft.scad>

module planet_ring(){
    difference(){
        ecylinder(d=unit*5, h=unit*0.5, center=true);

        for (i=[0:6])
            rotate([0, 0, 360/6*i])
            translate([0, -unit*1.5, 0])
                hcylinder(d=hole, h=unit*0.5+0.01, center=true);
    }

    translate([0, 0, unit*0.75])
        shaft(2);

}

!color("SkyBlue")
    planet_ring();

%for (i=[0:6]){
    echo (360/8/2+360/6*i/2);
    rotate([0, 0, 360/6*i])
    translate([0, -unit*1.5, -unit*1.25])
        rotate([0, 0, 360/8/2+360/6*i/2])
        gear_8_shaft();
}
