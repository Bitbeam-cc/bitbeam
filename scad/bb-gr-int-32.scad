// NAME: Internal Gear 32
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>

module profile(size, h=1){
    rotate_extrude($fn=size*12)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit*1.5-0.5, 0], [unit*1.5,0.5],
            [unit*1.5, h*unit-0.5], [unit*1.5-0.5, h*unit], [0, h*unit]
        ]);
}


module gear_32() {
    difference(){
        profile(4);
        
        for (z=[-1, 1])
            translate([0, 0, z*unit/2+unit/2-0.49*z])
            mirror([0, 0, z+1])
                cylinder(d1=unit*4-1, d2=unit*4-2.5, h=1, $fn=32, center=true);

        translate([0, 0, -0.05])
        gear(number_of_teeth = 32,
            circular_pitch=false,
            diametral_pitch=0.998,
            gear_thickness = unit*1.1,
            rim_thickness = unit*1.1,
            rim_width = 5,
            hub_thickness = unit*1.1,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0,
            circles=0,
            twist=0);

        for (i=[0:90:360])
            rotate([0, 0, i])
            translate([unit*3, -unit, unit*0.5])
            rotate([0, 0, 90])
            holes(3);

        for (x=[-1,1], y=[-1,1]) {
            translate([x*unit*2, y*unit*2, unit*0.5])
                holes(1);
        }
    }
}

color("SkyBlue")
    gear_32();

/*
use <bb-gr-8.scad>
use <bb-gr-24.scad>
use <bb-gr-40.scad>

%translate([0, -unit*4,  0])
    rotate([0, 0, 0])
    gear_8();

%translate([unit*3, 0 , 0])
    rotate([0, 0, 0])
    gear_24();

%translate([0, unit*2, 0])
    rotate([0, 0, 0])
    gear_40();
*/
