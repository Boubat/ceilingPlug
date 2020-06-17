module circlePiece(radius=30,width=10) {
    width = min(width,2*radius);
    distanceFromCenter = sqrt( radius*radius - (width*width)/4 );
    
    translate([-distanceFromCenter,0,0])
        difference() {
            circle(r=radius);
            translate([distanceFromCenter-radius,0,0])
                square(size=2*radius,center=true);
        }
}