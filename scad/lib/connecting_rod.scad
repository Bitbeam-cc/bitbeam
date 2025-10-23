include <../bitbeam-lib/bitbeam-lib.scad>

module join(size){
    difference(){
        union(){
            for (i=[0, size-1])
                translate([i*unit, 0, 0])
                    ecylinder(d=unit, h=unit*0.5-0.2, center=true);

            hull(){
                for (i=[0, size-1])
                    translate([i*unit, 0, 0])
                        ecylinder(d=unit*0.5, h=unit*0.5-0.2, center=true);
            }
        }

        for (i=[0, size-1])
                translate([i*unit, 0, 0])
                    holes(1, h=0.5);
    }
}
