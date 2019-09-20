$fn=25;

module screw_m3(h=20){
    cylinder(d=3, h=h, center=true);
    translate([0, 0, -h/2-1.5])
        difference(){
            cylinder(d=5.5, h=3, center=true);
            translate([0, 0, -0.8])
                cylinder(d=2.8, h=1.8, $fn=6, center=true);
        }
}

module screw_m4(h=20){
    cylinder(d=4, h=h, center=true);
    translate([0, 0, -h/2-2])
        difference(){
            cylinder(d=7, h=4, center=true);
            translate([0, 0, -0.8])
                cylinder(d=3.5, h=2.5, $fn=6, center=true);
        }
}

module nut_m3(){
    difference(){
        cylinder(d=6, h=2.4, $fn=6);
        translate([0, 0, -0.05])
            cylinder(d=3, h=2.5);
    }
}

module nut_m4(){
    difference(){
        cylinder(d=7.6, h=3.2, $fn=6);
        translate([0, 0, -0.05])
            cylinder(d=4, h=3.3);
    }
}

module washer_m3(h){
    difference(){
        cylinder(d=8, h=h, center=true);
        cylinder(d=3.5, h=h+0.1, center=true);
    }
}
