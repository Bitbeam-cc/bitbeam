// Rail library

include <../bitbeam-lib/bitbeam-lib.scad>

module wheel_profile(size, h=1){
    rotate_extrude($fn=size*16, convexity = 3)
        translate([unit*(size-1)/2, 0])
        polygon([
            [0, 0],
            [unit/2+2.2, 0], [unit/2+2.5, 0.3],
            [unit/2+2.5, unit/4-0.8], [unit/2+2.3, unit/4-0.5],
            [unit/2+0.4, unit/4], [unit/2, unit/4+0.4],
            [unit/2-0.2, h*unit-0.5],
            [unit/2-0.7, h*unit], [0, h*unit]
        ]);
}

module profile(){
    polygon([
            [-unit/4+0.5, -unit/2], [unit/4-0.5, -unit/2],
            [unit/4, -unit/2+0.35], [unit/4, -0.35],
            [unit/4-0.5, 0], [unit/4-0.5, unit/2],
            [unit/4, unit/2+0.5], [unit/4, unit-0.5], [unit/4-0.5, unit],
            [-unit/4+0.5, unit], [-unit/4, unit-0.5], [-unit/4, unit/2+0.5],
            [-unit/4+0.5, unit/2], [-unit/4+0.5, 0],
            [-unit/4, -0.35], [-unit/4, -unit/2+0.35],
        ]);
}

module rail_profile(size, center=true){
    rotate([90, 0, 90])
    render()
    linear_extrude(unit*size, center=center)
        profile();
}


module rail_curve(size, angle=90){
    rotate_extrude($fn=size*4, angle=angle)
        translate([unit*(size-1)/2, 0])
        profile();
}

module rail(size){
    for (i=[-1, 1]){
        translate([0, (32/2+unit*0.25+0.25)*i, unit*0.5])
            rail_profile(size);
    }
     
    if (size > 4){
        for (i=[4:4:size-4]){
            translate([(-size/2+0.5+i)*unit, -3.5*unit, unit*0.25]){
                rotate([0, 0, 90])
                    cube_base(8, 2, h=0.5);
                for (l=[1, 6]){
                    translate([-unit*0.5, l*unit, 0])
                        ecube([unit*2, unit, unit/2], true);
                }
            }
        }
    }
    
    difference(){        
        for (i=[0, size-1]){
            translate([(-size/2+0.5+i)*unit, -3.5*unit, unit*0.25])
            rotate([0, 0, 90])
                cube_arm(8, h=0.5, skip=[1,6]);
        }
    
        for (r = [0, 1]){
            rotate([0, 0, r*180])
            translate([size/2*unit, -unit*1.5, unit*0.25]){
                cube([unit, unit/2, unit/2+0.1], true);
                for (i=[-1, 1]){
                    translate([0, i*unit/4, 0])
                    rotate([0, 0, 45])
                        cube([0.5, 0.5, unit*0.51], true);
                }
            }
        }
    }
    
    for (r = [0, 1]){
            rotate([0, 0, r*180]){
                translate([(size/2+0.15)*unit, unit*1.5, unit*0.25]){
                    ecube([unit/2, unit/2-0.1, unit/2], true);
                }
                translate([(size/2+0.5)*unit, unit*1.5, unit*0.25]){
                    ecylinder(d=hole-0.1, h=unit/2, center=true);
                }
            }
        }
}

module curve(angle){
    translate([0, 0, unit*0.5]) {
        rail_curve(48.45, angle);
        rail_curve(57.55, angle);
    }
    
    for (a=[0, 1]){
        rotate([0, 0, a*45]) //11 -> 22
        translate([unit*22.5, unit*0.5-unit*a, unit*0.25])
            difference(){
                cube_arm(8, h=0.5, skip=[1,6]);
        
                mirror([0, a, 0])
                translate([unit*(2+3*a), -unit*0.5, 0]){
                    cube([unit/2, unit, unit/2+0.1], true);
                    for (i=[-1, 1]){
                        translate([i*unit/4, 0, 0])
                        rotate([0, 0, 45])
                            cube([0.5, 0.5, unit*0.51], true);
                    }
                }
            }
    }
    
    for (a=[0, 1]){
        rotate([0, 0, a*45]){
            mirror([0, a, 0])
            translate([unit*(27.5-(a*3)), -unit*0.15, unit*0.25]){
                ecube([unit/2, unit/2-0.1, unit/2], true);
            }
            mirror([0, a, 0])
            translate([unit*(27.5-(a*3)), -0.5*unit, unit*0.25]){
                ecylinder(d=hole-0.1, h=unit/2, center=true);
            }
        }
    }
    
    for (a=[11.25:11.25:33.75])
        rotate([0, 0, a])
        translate([unit*22.5, -unit/2, unit*0.25]){
            cube_base(8, 2, h=0.5);
            for (x=[1, 6])
                translate([unit*x, unit*0.5, 0])
                ecube([unit, unit*2, unit*0.5], true);
        }
}