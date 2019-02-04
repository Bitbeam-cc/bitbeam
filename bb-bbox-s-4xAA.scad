module roh(){
    difference(){
        cube(16);
        translate([0, 0, -0.01])
        cylinder(d=15, h=16.1);
    }
}

translate([-1, 12, 0])
difference(){
    import("stl/bb-bbox-s-5xAA.stl");
    translate([-15, -76, -0.1])
        cube([16, 64, 15]);

    translate([8, -70, -0.01])
        rotate([0, 0, 180])
        roh();
}

