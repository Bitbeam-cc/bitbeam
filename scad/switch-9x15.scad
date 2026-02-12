// NAME: 12V Power Switch 9x15
// CATEGORY: Electric
// COLOR: 0

module switch(){
    color([0.2, 0.2, 0.2])
        cube([9, 15, 11], center=true);
    translate([0, 0, 6])
        color([0.2, 0.2, 0.2])
        cube([11, 15, 2], center=true);
    translate([0, 0, -8.5])
        color([0.2, 0.2, 0.2, 0.5])
        cube([5, 12, 7], center=true);
    translate([0, 0, 7])
        rotate([10, 0, 0])
        color([1, 0, 0, 0.8])
        cube([7, 11, 3], center=true);
}

switch();
