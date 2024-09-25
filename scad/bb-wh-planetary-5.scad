// NAME: Gear 24
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>

use <MCAD/involute_gears.scad>


module planetary() {
    difference(){
        ecylinder(d=6*unit, h=unit, center=true);

        rotate([0, 0, -3.1])
        for (i=[0, 1])
            mirror([0, 0, i])
            gear(number_of_teeth = 30,
                circular_pitch=false,
                diametral_pitch=0.715,
                gear_thickness = unit/2+0.01,   // vyska meziprostoru
                rim_thickness = unit/2+0.01,    // vyska obvodu - ozubeni
                rim_width = 5,         // šířka ozubení (obvodu)
                hub_thickness = unit/2,    // vyska středu
                hub_diameter=1,       // průměr sředu
                bore_diameter=0,       // průměr středové díry
                backlash = 0,          // skosení zubu
                circles=0,             // díry v meziprostoru
                twist=-5.3);             // zkosení zůbů
    }


    difference(){
        rotate([0, 0, 9])
        for (i=[0, 1])
            mirror([0, 0, i])
            gear(number_of_teeth = 12,
                circular_pitch=false,
                diametral_pitch=0.7,
                gear_thickness = unit/2+0.01,   // vyska meziprostoru
                rim_thickness = unit/2+0.01,    // vyska obvodu - ozubeni
                rim_width = 5,          // šířka ozubení (obvodu)
                hub_thickness = unit/2, // vyska středu
                hub_diameter=1,         // průměr sředu
                bore_diameter=0,        // průměr středové díry
                backlash = 0,        // skosení zubu
                circles=0,              // díry v meziprostoru
                twist=15);             // zkosení zůbů

        cube([unit, unit, unit+0.1], true);
    }

    for (a = [0:6])
        rotate([0, 0, 360/6*a])
    translate([0, 14.7, 0])
    for (i=[0, 1])
            mirror([0, 0, i])
            rotate([0, 0, 55.1])
            gear(number_of_teeth = 8,
                circular_pitch=false,
                diametral_pitch=0.68,
                gear_thickness = unit/2+0.01,   // vyska meziprostoru
                rim_thickness = unit/2+0.01,    // vyska obvodu - ozubeni
                rim_width = 5,          // šířka ozubení (obvodu)
                hub_thickness = unit/2, // vyska středu
                hub_diameter=1,         // průměr sředu
                bore_diameter=0,        // průměr středové díry
                backlash = 0.0,        // skosení zubu
                circles=0,              // díry v meziprostoru
                twist=-21);             // zkosení zůbů

}

difference(){
    planetary();
    /*translate([0, 0, 5])
    cube([100, 100, 10], true);*/
}
