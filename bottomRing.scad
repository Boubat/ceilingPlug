module bottomRing(outerRadius=30,radialThickness=4,height=4,withMiddleBody=false,middleBodyWidth=12,withAperture=true,aperture=30) {
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
            if (withAperture) {
                difference() {
                    square([2*outerRadius,2*outerRadius],center=true);
                    square([2*outerRadius,aperture],center=true);
                    difference() {
                        circle(r=2*outerRadius);
                        circle(r=outerRadius);
                    }
                }
            }
        }
    }
}