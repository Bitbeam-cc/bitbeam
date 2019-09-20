// NAME: O Ring 53
// CATEGORY: Wheel
// COLOR: 0

// Could be use O ring 50
module o_ring_53(){
    rotate_extrude(convexity =1)
        translate([55/2+1.5, 0, 0])
        circle(d = 5);
}

translate([0, 0, 2.5])
    color("black")
    o_ring_53();
