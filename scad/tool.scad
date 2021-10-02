// NAME: Tool
// LDRAW: 508
// CATEGORY: Tools

module ecube(size){
    size = (is_num(size)) ? [size, size, size] : size;

    difference(){
        cube(size, true);

        for (x = [-1, 1])
            for (z = [-1, 1])
            translate([size.x/2*x, 0, size.z/2*z])
            rotate([0, 45, 0])
            cube([3,size.y+.1,3], true);

        for (y = [-1, 1])
            for (z = [-1, 1])
                translate([0, size.y/2*y, size.z/2*z])
                rotate([45, 0, 0])
                cube([size.x+.1,3,3], true);

        for (x = [-1, 1])
            for (y = [-1, 1])
                translate([size.x/2*x, size.y/2*y, 0])
                rotate([0, 0, 45])
                cube([3,3,size.z+.1], true);

    }
}

color("DarkOrange"){
difference(){
    hull(){
        ecube([30, 20, 20]);

        translate([-60,0, -10.05])
            cube([0.1, 15, 0.1], true);
    }

    for (y=[-1, 1])
        translate([-60,y*7.5,-10])
        rotate([0, 0, 45])
        cube(3, true);

    translate([-12, -9.5, -4])
        rotate([90,0,0])
        linear_extrude(1.1, center=true, convexity=10)
        text("m-BITBEAM", font = "Sans", size=6,
              halign="center", valign="center");

    translate([-12, -9.5, -4])
        rotate([90,0,-3])
        linear_extrude(1.1, center=true, convexity=10)
        text("m-BITBEAM", font = "Sans", size=6,
              halign="center", valign="center");
}

translate([20, 0, 0])
    ecube([40, 10, 10]);

translate([40, 0, 0])
    ecube([15, 30, 15]);

translate([40, -20, 0])
    ecube([20, 20, 20]);

translate([40, 10, 0])
    rotate([-90, 0, 0])
    cylinder(d1=4.7, d2=3, h=15, $fn=30);
}
