// NAME: Gear 24
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>
use <bb-gr-8.scad>
use <bb-gr-16.scad>
use <bb-gr-int-32.scad>


color("SkyBlue")
    gear_16();

color("SkyBlue")
rotate([0, 0, 360/32/2])
    gear_32();

color("silver")
for (i=[0:6]){
    echo (360/8/2+360/6*i/2);
    rotate([0, 0, 360/6*i])
    translate([0, -unit*1.5, 0])
        rotate([0, 0, 360/8/2+360/6*i/2])
        gear_8();
}
