// NAME: Traffic Lights 2
// CATEGORY: Electric
// KEYWORDS: Special
// LDRAW: 508

include <bitbeam-lib/bitbeam-lib.scad>
$fn=25;

module led() {
  translate([0,0,-.1])
    cylinder(d=5.9,h=4.9);
  translate([0,0,-.1])
    cylinder(d=4.9,h=10.2);
}

module cover() {
  difference() {
    translate([0,0,10])
      cylinder(d=7.6,h=4);
    translate([0,0,9.9])
      cylinder(d=6,h=4.2);
    translate([-4,-3.8,10])
      rotate([27.8,0,0])
      cube(10);
  }
}


color("orange") {
    translate([-unit,-unit*6.5, unit/2])
        cube_t(3,7,h=1);
    translate([-unit/2,-unit/2+3,0])
        ecube([unit,4,unit]);

    difference(){
        translate([-6,0,0])
            ecube([12,20,10]);

        for (i = [6,14])
            translate([0, i, 0])
                led();
    }

    for (i = [6,14])
        translate([0, i, 0])
            cover();
}
