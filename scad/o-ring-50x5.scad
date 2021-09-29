// NAME: O Ring 50 x 5
// CATEGORY: Wheel
// COLOR: 0

module o_ring_50(){
    rotate_extrude(convexity =1)
        translate([(50+5)/2, 0, 0])
        circle(d = 5, $fn=20);
}

translate([0, 0, 2.5])
    color("black")
    o_ring_50();
