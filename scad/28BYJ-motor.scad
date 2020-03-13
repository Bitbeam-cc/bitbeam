// NAME: Stepper 28BYJ Motor
// CATEGORY: Electric Motor
// COLOR: 493

$fn=30;

module stepper_28BYJ_motor(){
    cylinder(d=28, h=19);
    translate([0, -14.6/2, 2])
        cube([17, 14.6, 17]);

    translate([-8,0,1]){
        cylinder(d=9, h=19+1.5);

        difference(){
            cylinder(d=5, h=19+10);
            translate([-3-1.5,0,19+10-3])
                cube(6.01, center=true);
            translate([3+1.5,0,19+10-3])
                cube(6.01, center=true);

        }}

    difference(){
        hull(){
            translate([0,-35/2,19-1])
                cylinder(d=7, h=1);
            translate([0,35/2,19-1])
                cylinder(d=7, h=1);
        }

        translate([0,-35/2,19-1.01])
            cylinder(d=4.2, h=1.02);

        translate([0,35/2,19-1.01])
            cylinder(d=4.2, h=1.02);
    }
}

stepper_28BYJ_motor();
