// NAME: Planet Beam 5
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <gr-8-shaft.scad>
use <gr-16.scad>
use <gr-int-32.scad>

module planet_ring(){
    difference(){
        ecylinder(d=unit*5, h=unit*0.5-0.5, center=true);

        for (i=[0:6])
            rotate([0, 0, 360/6*i])
            translate([0, -unit*1.5, 0])
                hcylinder(d=hole, h=unit*0.5, center=true);
    }

    translate([0, 0, unit*0.25+0.25])
        rotate([0, -90, 0])
        cube_arm(4, skip=[0],  skip_side=[0]);

}

!color("SkyBlue")
    planet_ring();

*color("SkyBlue")
    gear_16();

*color("SkyBlue")
rotate([0, 0, 360/32/2])
    gear_32();

*color("silver")
for (i=[0:6]){
    echo (360/8/2+360/6*i/2);
    rotate([0, 0, 360/6*i])
    translate([0, -unit*1.5, -unit*1.25])
        rotate([0, 0, 360/8/2+360/6*i/2])
        gear_8_shaft();
}
