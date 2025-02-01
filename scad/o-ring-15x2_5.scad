// NAME: O Ring 15 x 2.5
// CATEGORY: Wheel
// COLOR: 0

module o_ring_15(){
    rotate_extrude(convexity = 2, $fn=25)
        translate([(15+2.5)/2, 0, 0])
        circle(d = 2.5, $fn=20);
}

translate([0, 0, 2.5/2])
    color("black")
    o_ring_15();
