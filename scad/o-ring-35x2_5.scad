// NAME: O Ring 35 x 2.5
// CATEGORY: Wheel
// COLOR: 0

module o_ring_35(){
    render(convexity = 2)
    rotate_extrude(convexity =1, $fn=40)
        translate([(35+2.5)/2, 0, 0])
        circle(d = 2.5, $fn=20);
}

translate([0, 0, 2.5/2])
    color("black")
    o_ring_35();
