// NAME: Beam 1 Pinned 1
// LDRAW: 321

include <bitbeam-lib/bitbeam-lib.scad>
use <lib/pins.scad>


color("DodgerBlue")
translate([0, 0, unit*0.5]){
    rotate([0, -90, 0])
        difference(){
            cube_arm(1);
        }
    translate([0, 0, unit])
        os_pin_1();
}
