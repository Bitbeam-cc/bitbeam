// NAME: Beam 20x2 Logo

include <bitbeam-lib/bitbeam-lib.scad>

difference(){
    union(){
        translate([4-10*unit, 4, unit*0.5])
            cube_arm(20, h=1.001, skip_side=[for (i=[7:12]) i]);
        translate([4-10*unit, 4, unit*1.5])
            cube_arm(20, h=1);
    }

    translate([0,0.4,5])
        rotate([90,0,0])
        linear_extrude(1, center=true, convexity=10)
        text("m-BITBEAM", font = "Sans", size=6,
              halign="center", valign="center");
    translate([0,7.6,5])
        rotate([90,0,180])
        linear_extrude(1, center=true, convexity=10)
        text("m-BITBEAM", font = "Sans", size=6,
              halign="center", valign="center");
}
