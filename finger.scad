module finger(innerRadius=7,outerRadius=8,thickness=2,height=20,bladeHeight=45,holeRadius=30) {
    rotate([90,0,0]) {
        linear_extrude(height=thickness,center=true) {
            // beam
            // blade
            // ring
            difference() {
                circle(r=outerRadius);
                circle(r=innerRadius);
            }
        }
    }
}