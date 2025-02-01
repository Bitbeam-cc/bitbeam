// NAME: Planet Plus Shaft 5
// CATEGORY: Gear
// LDRAW: 322

include <bitbeam-lib/bitbeam-lib.scad>

module side(){
    difference(){
        cylinder(r1=0, r2=4.7, h=2, center=true, $fn=30);
        translate([0, 0, 0.01])
            cylinder(d1=0, d2=4.7, h=2, center=true, $fn=30);
    }
}

module plus_shaft(h){
    difference(){
        cylinder(d=4.7, h=h, center=true, $fn=60);

        for(x=[-1, 1])
            for(y=[-1, 1])
                translate([x*1.7, y*1.7, 0])
                    cube([1.7, 1.7, h+0.1], center=true);

        for(x=[-1, 1])
            for(y=[-1, 1])
                translate([x*2.85, y*2.85, 0])
                    rotate([0, 0, 45])
                    cube([4, 4, h+0.1], center=true);

        //for(z=[-1,1])
        for(z=[1])
            translate([0,0,z*h/2])
            mirror([0,0,z+1])
            side();
    }
}

module planet_ring(){
    difference(){
        ecylinder(d=unit*5, h=unit*0.5, center=true);

        for (i=[0:6])
            rotate([0, 0, 360/6*i])
            translate([0, -unit*1.5, 0])
                hcylinder(d=hole, h=unit*0.5+0.01, center=true);
    }

    translate([0, 0, unit*2.25])
        plus_shaft(unit*5);

}

color("SkyBlue")
    planet_ring();
