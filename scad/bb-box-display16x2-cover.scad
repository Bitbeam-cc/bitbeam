// NAME: Display Cover 16x2
// CATEGORY: Electric
// LDRAW: 27

include <bitbeam-lib/bitbeam-lib.scad>

module socket(){
  difference(){
    union(){
      cylinder(d=6,h=4.6);
      cylinder(d=2.8,h=6.2);
      translate([-3,0,0]) cube([6,3,4.6]);
      translate([0,-3,0]) cube([3,6,4.6]);
    }
  translate([0,0,1.6]) cylinder(d=1.5,h=8);
  }
}

color("YellowGreen")
    union() {
        difference(){
            translate([-44,-16,4])
                cube_plate(12, 5, x2=0, h=1, holes=[1,3]);
            translate([0,0,5.6])
                cube([80.2,36.8,8], center=true);
            translate([0,-.7,0])
                cube([71.5,24.5,8], center=true);
        }

        translate([37.5,15.5,0]) socket();
        translate([-37.5,15.5,0]) rotate([0,0,90]) socket();
        translate([-37.5,-15.5,0]) rotate([0,0,180]) socket();
        translate([37.5,-15.5,0]) rotate([0,0,270]) socket();
    }
