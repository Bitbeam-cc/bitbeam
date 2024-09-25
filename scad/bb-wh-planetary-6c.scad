// NAME: Gear 24
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>

use <MCAD/involute_gears.scad>


module planetary(h=1) {
    difference(){
        union(){
        translate([0, 0, h*unit*-0.5])
        gear(number_of_teeth = 12,
             circular_pitch=false,
             diametral_pitch=0.69,
             gear_thickness = h*unit,   // vyska meziprostoru
             rim_thickness = h*unit,    // vyska obvodu - ozubeni
             rim_width = 5,          // šířka ozubení (obvodu)
             hub_thickness = unit/2, // vyska středu
             hub_diameter=1,         // průměr sředu
             bore_diameter=0,        // průměr středové díry
             backlash = 0,        // skosení zubu
             circles=0,              // díry v meziprostoru
             twist=0);             // zkosení zůbů

             translate([0, 0, h*unit/2-3])
                cylinder(d1=14.4, d2=20, h=3,$fn=12);
             translate([0, 0, -h*unit/2])
                cylinder(d2=14.4, d1=20, h=3,$fn=12);
        }

        rotate([0, 0, 360/12/2])
            cube([unit+0.1, unit+0.1, h*unit+0.1], true);

        rotate([0, 0, 360/12/2])
        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(h*unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(h*unit/2-0.8)])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }
    }


    for (a = [0:6])
        rotate([0, 0, 360/6*a])
        translate([0, 14.7, h*unit*-0.5])
        rotate([0, 0, 360/8/2])
        intersection(){
            gear(number_of_teeth = 8,
                circular_pitch=false,
                diametral_pitch=0.69,
                gear_thickness = h*unit,   // vyska meziprostoru
                rim_thickness = h*unit,    // vyska obvodu - ozubeni
                rim_width = 5,          // šířka ozubení (obvodu)
                hub_thickness = unit/2, // vyska středu
                hub_diameter=1,         // průměr sředu
                bore_diameter=0,        // průměr středové díry
                backlash = 0.0,        // skosení zubu
                circles=0,              // díry v meziprostoru
                twist=0);             // zkosení zůbů

            union(){
                cylinder(d1=8.8, d2=15, h=3.01, $fn=8);
                translate([0, 0, 3])
                    cylinder(d=15, h=h*unit-6, $fn=8);
                translate([0, 0, h*unit-3])
                    cylinder(d2=8.8, d1=15, h=3, $fn=8);
            }
        }

    difference(){
        ecylinder(d=6*unit, h=h*unit, center=true);

        translate([0, 0, h*unit*-0.5-0.005])
            rotate([0, 0, 0])
            intersection(){
                gear(number_of_teeth = 30,
                    circular_pitch=false,
                    diametral_pitch=0.72,
                    gear_thickness = h*unit+0.01,   // vyska meziprostoru
                    rim_thickness = h*unit+0.01,    // vyska obvodu - ozubeni
                    rim_width = 5,         // šířka ozubení (obvodu)
                    hub_thickness = h*unit/2,    // vyska středu
                    hub_diameter=1,       // průměr sředu
                    bore_diameter=0,       // průměr středové díry
                    backlash = -0.2,          // skosení zubu
                    circles=0,             // díry v meziprostoru
                    twist=0);             // zkosení zůbů

                union(){
                    cylinder(d2=44, d1=38.6, h=3.01, $fn=30);
                    translate([0, 0, 3])
                        cylinder(d=44, h=h*unit-5.99, $fn=30);
                    translate([0, 0, h*unit-3])
                    cylinder(d1=44, d2=38.6, h=3.01, $fn=30);
                }
            }
    }
}

difference(){
    planetary(1);
    /*translate([0, 0, 5])
    cube([100, 100, 10], true);*/
}
