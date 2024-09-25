// NAME: Gear 24
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>

use <MCAD/involute_gears.scad>

// (Ns + Nr)/Np have to be whole number
Ns = 16;
Nr = 32;
Np = 8;


module planetary(h=1) {
    difference(){
        union(){
        translate([0, 0, h*unit*-0.5])
        gear(number_of_teeth = Ns,
             circular_pitch=false,
             diametral_pitch=1,
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
                cylinder(d1=14.4, d2=17.8, h=3,$fn=12);
            translate([0, 0, -h*unit/2])
                cylinder(d2=14.4, d1=17.8, h=3,$fn=16);
        }

        cube([unit+0.1, unit+0.1, h*unit+0.1], true);

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
        translate([0, 12.2, h*unit*-0.5])
        rotate([0, 0, 360/8/2+360/6*a/2])
        intersection(){
            gear(number_of_teeth = Np,
                circular_pitch=false,
                diametral_pitch=1,
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
                cylinder(d1=6.5, d2=10, h=3.01, $fn=8);
                translate([0, 0, 3])
                    cylinder(d=10, h=h*unit-6, $fn=8);
                translate([0, 0, h*unit-3])
                    cylinder(d2=6.5, d1=10, h=3, $fn=8);
            }
        }

    difference(){
        ecylinder(d=6*unit, h=h*unit, center=true);

        translate([0, 0, h*unit*-0.5-0.005])
            rotate([0, 0, 360/32/2])
            intersection(){
                gear(number_of_teeth = Nr,
                    circular_pitch=false,
                    diametral_pitch=0.98,
                    gear_thickness = h*unit+0.01,   // vyska meziprostoru
                    rim_thickness = h*unit+0.01,    // vyska obvodu - ozubeni
                    rim_width = 5,         // šířka ozubení (obvodu)
                    hub_thickness = h*unit/2,    // vyska středu
                    hub_diameter=0,       // průměr sředu
                    bore_diameter=0,       // průměr středové díry
                    backlash = -0.5,          // skosení zubu
                    circles=0,             // díry v meziprostoru
                    twist=0);             // zkosení zůbů

                union(){
                    cylinder(d2=35, d1=31, h=3.01, $fn=32);
                    translate([0, 0, 3])
                        cylinder(d=35, h=h*unit-5.99, $fn=32);
                    translate([0, 0, h*unit-3])
                    cylinder(d1=35, d2=31, h=3.01, $fn=32);
                }
            }

        for (i=[0:90:360])
            rotate([0, 0, i])
            translate([unit*3, -unit, 0])
            rotate([0, 0, 90])
            holes(3);

        for (x=[-1,1], y=[-1,1]) {
            translate([x*unit*2, y*unit*2, 0])
                holes(1);
        }
    }
}

difference(){
    planetary(1);
    /*translate([0, 0, 5])
    cube([100, 100, 10], true);*/
}
