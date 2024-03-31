// NAME: Beam Frame 6x6 mid
// LDRAW: 1

include <bitbeam-lib/bitbeam-lib.scad>

module frame(x, y, h=1, side_holes=true){
    difference(){
        union(){
            for (l=[0, 1])
                translate([unit*0.5, l*(y-1)*unit, 0])
                    cube_arm(x-1, h=h, skip=[0, x-2], skip_side=[0, x-2]);

            for (l=[0, 1])
                translate([l*(x-1)*unit, unit*0.5, 0])
                rotate([0, 0, 90])
                    cube_arm(y-1, h=h, skip=[0, y-2], skip_side=[0, y-2]);

            for (i=[0, 1], l=[0, 1])
                translate([i*(x-1)*unit, l*(y-1)*unit, 0])
                    ecube([unit, unit, unit*h], true);
        }

        for (i=[0, 1], l=[0, 1])
            translate([i*(x-1)*unit, l*(y-1)*unit, 0])
                holes(1, h);

    }
}

translate([-2.5*unit, -2.5*unit, unit*0.5])
    color("RoyalBlue")
    frame(6, 6);
