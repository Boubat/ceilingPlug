module bottomRing(outerRadius=30,radialThickness=4,height=4,withMiddleBody=true,middleBodyWidth=12) {
    linear_extrude(height=height) {
        union() {
            difference(){
                circle(r=outerRadius);
                circle(r=outerRadius-radialThickness);
            }
            if (withMiddleBody) {
                difference() {
                    square([middleBodyWidth,2*outerRadius],center=true);
                    difference() {
                        circle(r=outerRadius+middleBodyWidth);
                        circle(r=outerRadius);
                    }
                }
            }
        }
    }
}