use <circlePiece.scad>

module head(radius,depth,width,thickness) {
    difference() {
        translate([2*radius/2,0,thickness/2])
            cube([2*radius,width-0.001,thickness-0.001],center=true);
        translate([depth,0,0])
            rotate([0,-(90-atan(thickness/depth)),0])
                translate([0,0,-3*radius])
                    linear_extrude(height=6*radius) {
                        difference() {
                            translate([2*radius/2,0,0])
                                square([2*radius,width+0.001],center=true);
                            rotate([0,(90-atan(thickness/depth)),0])
                            circlePiece(radius=radius,width=width);
                        }
                    }
    }
}
