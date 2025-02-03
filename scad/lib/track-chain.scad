include <../bitbeam-lib/bitbeam-lib.scad>

module socket(){
    difference(){
        intersection(){
            union(){
                translate([0, 0, -11.5/2+1.75/2])
                    cylinder(d1=unit*1.5, d2=unit, h=1.75, center=true);
                translate([0, 0, 11.5/2-1.75/2])
                    cylinder(d2=unit*1.5, d1=unit, h=1.75, center=true);
                cylinder(d=unit, h=11.5, center=true);
            }
            cylinder(d=unit*1.3, h=unit*1.5, center=true);
            hull(){
                cylinder(d=unit, h=unit*1.6, center=true);
                translate([unit, unit, 0])
                    cylinder(d=unit*3, h=unit*1.6, center=true);

            }
        }
        cylinder(d=hole, h=unit*2, center=true);

        rotate([0, 0, -60])
            hull(){
                translate([0, 0, 0])
                    cylinder(d=4, h=unit*3, center=true);
                translate([0, 5, 0])
                    cylinder(d=4, h=unit*3, center=true);
            }

        rotate([0, 0, -60])
            translate([0, +4.3+1.7, 0])
            cube([unit*1.5, 4, unit*2], true);
    }
}

module socket2(){
    difference(){
        intersection(){
            union(){
                translate([0, 0, -(unit*3.5-0.5)/2+1.75/2])
                    cylinder(d1=unit*1.5, d2=unit, h=1.75, center=true);
                translate([0, 0, (unit*3.5-0.5)/2-1.75/2])
                    cylinder(d2=unit*1.5, d1=unit, h=1.75, center=true);

                translate([0, 0, -(unit*1-0.5)/2+1.75/2])
                    cylinder(d2=unit*1.5, d1=unit, h=1.75, center=true);
                translate([0, 0, (unit*1-0.5)/2-1.75/2])
                    cylinder(d1=unit*1.5, d2=unit, h=1.75, center=true);

                cylinder(d=unit, h=unit*3.5-0.5, center=true);
            }

            cylinder(d=unit*1.3, h=unit*3.5-0.5, center=true);
            hull(){
                cylinder(d=unit, h=unit*4-1, center=true);
                translate([unit, unit, 0])
                    cylinder(d=unit*3, h=unit*4-1, center=true);
            }
        }

        cylinder(d=hole, h=unit*4, center=true);

        rotate([0, 0, -60])
            hull(){
                translate([0, 0, 0])
                    cylinder(d=4, h=unit*5, center=true);
                translate([0, 5, 0])
                    cylinder(d=4, h=unit*5, center=true);
            }

        rotate([0, 0, -60])
            translate([0, +4.3+1.7, 0])
            cube([unit*1.5, 4, unit*4], true);

        rotate([0, 0, -60])
            translate([3, 0, 0])
            cube([10, 10, 4], true);
    }
}
