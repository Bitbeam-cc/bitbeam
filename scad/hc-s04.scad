// NAME: HC-S04 Ultrasound Sensor
// CATEGORY: Electric
// COLOR: 2

$fn=40;

module hc_s04(){
    color("green")
        cube([45, 20, 1.5], center=true);

    for(i=[-1, 1])
        translate([i*-13, 0, 0])
            color("silver")
            cylinder(d=16, h=12);

    color("silver")
    translate([0, 8, 0])
        hull(){
            for (i=[-1, 1])
                translate([i*3, 0, 0.7])
                    cylinder(d=3, h=2);
        }
}

hc_s04();
