$fn=25;

module gearbox_motor(){
    difference(){
        cube([64, 18.5, 22.5], center=true);
        
        for (i=[-1, 1])
            translate([64/2-31.8, 0, 17.5*i/2])
                rotate([90, 0, 0])
                cylinder(d=3.4, h=19.1, center=true);
        
        for (z=[-1, 1])
            for (y=[-1, 1])
                translate([-20.6, y*18.5/2, z*22.5/2])
                    rotate([45, 0, 0])
                    cube([23, 8, 8], center=true);
     }
    
    translate([64/2+2.5, 0, 0])
        cube([5, 2.8, 5], center=true);
    
    translate([66/2-11, 0, 0])
        rotate([90, 0, 0])
        difference(){        
            cylinder(d=5.5, h=38.5, center=true);
            translate([0, 3.7/2+5.5/2])
                cube([5.5, 5.5, 38.6], center=true);
            translate([0, -3.7/2-5.5/2])
                cube([5.5, 5.5, 38.6], center=true);
        }
}

gearbox_motor();