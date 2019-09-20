// NAME: RCW 0001 Ultrasound Sensor
// COLOR: 2
// CATEGORY: Electric

$fn=25;

module rwc_0001(){
    difference(){
        cube([31, 17, 1.5], center=true);

        for(x=[-1, 1]){
            for(y=[-1, 1])
                translate([x*27/2, y*13.5/2, 0])
                cylinder(d=2, h=1.6, center=true);
        }
    }

    for(i=[-1, 1])
        translate([i*-18.5/2, 0, 0])
            color("gray")
            cylinder(d=12.5, h=9);

    translate([0, 17/2+1.5, -2.5-0.75])
        color("black")
        cube([10.5, 9, 5], center=true);
    translate([0, 0, -1.75])
        color("black")
        cube([12, 10, 2], center=true);
}

rwc_0001();
