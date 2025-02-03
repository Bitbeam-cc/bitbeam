include <../bitbeam-lib/bitbeam-lib.scad>

$fn=40;
shift=12.6/2;       // track wheel X/6
// minimum wheel size 3 = maximum angle between chain pieces is 45

module socket(){
    difference(){
        intersection(){
            union(){
                translate([0, 0, -11.6/2+1.75/2])
                    cylinder(d1=unit*1.5, d2=unit, h=1.75, center=true);
                translate([0, 0, 11.6/2-1.75/2])
                    cylinder(d2=unit*1.5, d1=unit, h=1.75, center=true);
                cylinder(d=unit, h=11.6, center=true);
            }
            cylinder(d=unit*1.3, h=unit*1.5-0.4, center=true);
            hull(){
                cylinder(d=unit, h=unit*1.6, center=true);
                translate([unit, unit, 0])
                    cylinder(d=unit*3, h=unit*1.6, center=true);

            }
        }

        cylinder(d=2, h=unit*2, center=true);
    }
}

module socket2(){
    difference(){
        intersection(){
            union(){
                translate([0, 0, -(unit*3.5)/2+1.75/2+0.2])
                    cylinder(d1=unit*1.5, d2=unit, h=1.75, center=true);
                translate([0, 0, (unit*3.5)/2-1.75/2-0.2])
                    cylinder(d2=unit*1.5, d1=unit, h=1.75, center=true);

                translate([0, 0, -(unit*1)/2+1.75/2+0.05])
                    cylinder(d2=unit*1.5, d1=unit, h=1.75, center=true);
                translate([0, 0, (unit*1)/2-1.75/2-0.05])
                    cylinder(d1=unit*1.5, d2=unit, h=1.75, center=true);

                cylinder(d=unit, h=unit*3.5-0.4, center=true);
            }

            cylinder(d=unit*1.3, h=unit*3.5, center=true);
            hull(){
                cylinder(d=unit, h=unit*4-1, center=true);
                translate([unit, unit, 0])
                    cylinder(d=unit*3, h=unit*4-1, center=true);
            }
        }

        cylinder(d=2, h=unit*4, center=true);

        rotate([0, 0, -90])
            translate([2, 0, 0])
            cube([10, 10, 4.4], true);
    }
}

*socket2();
*socket();
