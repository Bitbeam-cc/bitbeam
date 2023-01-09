// NAME: Grub Screw M3x5
// COLOR: 80
// CATEGORY: Support

translate([0, 0, 2.25])
    cylinder(d1=3, d2=2, h=0.5, center=true, $fn=25);
difference(){
    translate([0, 0, -0.25])
        cylinder(d=3, h=4.5, center=true, $fn=25);
    translate([0, 0, -2.6])
        cylinder(d=1.8, h=1.8, $fn=6);
}
