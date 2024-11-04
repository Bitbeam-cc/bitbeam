// NAME: Beam 24x2 Logo
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

color("RoyalBlue")
difference(){
    translate([4-12*unit, 4, unit])
            cube_arm(24, h=2, side_holes=false);

    translate([4-12*unit, 4, unit*0.5])
        rotate([90, 0, 0])
        holes(24, skip=[for (i=[10:13]) i]);
    translate([4-12*unit, 4, unit*1.5])
        rotate([90, 0, 0])
        holes(24);

    translate([0,0.4,5])
        rotate([90,0,0])
        linear_extrude(1, center=true, convexity=10)
        text("BitBeam", font = "Sans", size=6,
              halign="center", valign="center");
    translate([0,7.6,5])
        rotate([90,0,180])
        linear_extrude(1, center=true, convexity=10)
        text("BitBeam", font = "Sans", size=6,
              halign="center", valign="center");
}
