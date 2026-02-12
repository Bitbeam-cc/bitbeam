// NAME: 12V Power Switch 13x20
// CATEGORY: Electric
// COLOR: 0

module switch(){
    color([0.2, 0.2, 0.2])
        cube([13, 20, 15], center=true);
    translate([0, 0, 8.5])
        color([0.2, 0.2, 0.2])
        cube([15, 21.5, 2], center=true);
    translate([0, 0, -11])
        color([0.2, 0.2, 0.2, 0.5])
        cube([13, 19, 7], center=true);
    translate([0, 0, 9])
        rotate([10, 0, 0])
        color([0, 0, 1, 0.8])
        cube([10, 15, 3], center=true);
}

switch();
