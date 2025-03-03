// NAME: Beam Wheel 5
// CATEGORY: Wheel

include <../bitbeam-lib/bitbeam-lib.scad>

module profile(size, h=1){
    rotate_extrude($fn=size*16)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0], [unit/2-0.5, 0], [unit/2,0.5],
            [unit/2, h*unit-0.5], [unit/2-0.5, h*unit], [0, h*unit]
        ]);
}

module ring(size, h=1){
    rotate_extrude($fn=size*16)
        translate([unit*(size-2)/2, 0])
        polygon([
            [0.5, 0], [unit-0.5, 0], [unit,0.5],
            [unit, h*unit-0.5], [unit-0.5, h*unit],
            [0.5, h*unit], [0, h*unit-0.5], [0, 0.5]
        ]);
}

module round_logo(size,){
    text = ["B", "i", "t ", "B ", "e ", "a ", "m"];
    fsize = size < 10 ? size/3 : 3;

    for (i = [0:len(text)])
        rotate([0, 0, -28/len(text)*i+10])
        translate([unit*size/2-unit/3.5, 0, 0])
        linear_extrude(1, center=true, convexity=10)
            rotate([0, 0, 270])
            text(text[i], font = "Sans", size=fsize,
                halign="center", valign="center");
}

module wheel(size, h=1, logo=true){
    render(convexity = 1)
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);

            cylinder(r=unit+0.1, h=unit, center=true, $fn=40);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0])
                    cube_arm(((size+1)/2)-1.2, h=1, side_holes=false);
            }

            if (size > 6) {
                for (i = [0:3]){
                    rotate([0, 0, 45+i*90])
                    translate([unit, 0, 0]){
                        hull(){
                            translate([unit*((size)/2-1.47), 0, 0])
                                ecube([unit*0.25, unit, unit], true);
                            translate([0, 0, 0])
                                ecube([unit*0.75, unit, unit], true);
                        }
                    }
                }
            }
        }

        if (logo && size > 3){
            rotate([0, 0, -20])
                translate([0, 0, unit/2])
                round_logo(size);

            rotate([0, 0, 160])
                translate([0, 0, unit/2])
                round_logo(size);
        }

        cube(unit+0.1, true);
        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.8)])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }

        for (i = [0:3]){
            rotate([0, 0, i*90]){
                translate([unit, 0, 0])
                    holes(size/2.1, h=1);
            }
        }

        if (size > 6)
            for (y = [-1,1])
                translate([-unit*2, y*unit*2, 0])
                    holes(5, h=1, skip=[1, 3]);
    }
}

module large_wheel(size, h=2, logo=true){
    render(convexity = 1)
    translate([0, 0, unit*0.5])
    difference(){
        union(){
            translate([0, 0, unit*-0.5])
                profile(size, h);
            cylinder(r=unit, h=unit, center=true, $fn=40);

            for (i = [0:3]){
                rotate([0, 0, i*90])
                translate([unit, 0, 0]){
                    hull(){
                        translate([unit*((size)/2-1.47), 0, unit*(h*0.5-0.5)])
                            ecube([unit*0.25, unit, unit*h], true);
                        translate([unit, 0, 0])
                            ecube([unit*0.75, unit, unit], true);
                    }
                    cube_arm(((size+1)/2)-1.2, 1, side_holes=false);
                }
            }

            if (size > 6) {
                for (i = [0:3]){
                    rotate([0, 0, 45+i*90])
                    translate([unit, 0, 0]){
                        hull(){
                            translate([unit*((size)/2-1.47), 0, unit*(h*0.5-0.5)])
                                ecube([unit*0.25, unit, unit*h], true);
                            translate([unit, 0, 0])
                                ecube([unit*0.75, unit, unit], true);
                        }
                        hull(){
                            translate([unit, 0, 0])
                                ecube([unit*0.75, unit, unit], true);
                            translate([0, 0, 0])
                                ecube([unit*0.75, unit, unit], true);
                        }
                    }
                }
            }
        }

        if (logo && size > 3){
            rotate([0, 0, -20])
                translate([0, 0, unit*(h-0.5)])
                round_logo(size);

            rotate([0, 0, 160])
                translate([0, 0, unit*(h-0.5)])
                round_logo(size);
        }

        for (i = [0:3]){
            rotate([0, 0, i*90])
                translate([unit, 0, unit*(h*0.5-0.5)])
                holes(size/2.1, h);
        }

        if (size > 6)
            for (y = [-1,1])
                translate([-unit*2, y*unit*2, unit*(h*0.5-0.5)])
                    holes(5, h=h, skip=[1,2,3]);

        cube(unit+0.1, true);
        for(z=[-1, 1])
            hull(){
                translate([0, 0, z*(unit/2+0.01)])
                    cube([unit+1.6, unit+1.6, 0.01], true);
                translate([0, 0, z*(unit/2-0.8)])
                    cube([unit+0.1, unit+0.1, 0.01], true);
            }
    }
}

//large_wheel(7);
wheel(7);
