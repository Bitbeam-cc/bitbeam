// NAME: Gear 8 with Shaft
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <MCAD/involute_gears.scad>
use <lib/holes.scad>

module shaft(){
    difference(){
        cylinder(d=4.5, h=unit*3, center=true);

        translate([0, 4.8/2+1, -unit*0.25/2])
            cube([unit, 3, unit*3.251], center=true);
        translate([0, -4.8/2-1, -unit*0.25/2])
            cube([unit, 3, unit*3.251], center=true);
    }
}


module gear_8() {
    translate([0, 0, unit*1.5])
    shaft();

    difference(){
        gear(number_of_teeth = 8,
            circular_pitch=false,
            diametral_pitch=1,
            gear_thickness = unit,
            rim_thickness = unit,
            rim_width = 5,
            hub_thickness = unit,
            hub_diameter=0,
            bore_diameter=0,
            backlash = 0.,
            circles=0,
            twist=0);

        for (i = [0:360/8:360])
            rotate([0, 0, i]){
                translate([unit*1.5/2, 0, 0])
                rotate([0, 45, 0])
                    cube(2, true);
                translate([unit*1.5/2, 0, unit])
                rotate([0, 45, 0])
                    cube(2, true);
            }
    }
}

!color("SkyBlue")
    gear_8();
%translate([unit, 0 , 0])
    rotate([0, 0, 360/8/2])
    gear_8();
