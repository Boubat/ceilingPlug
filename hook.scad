module hook(bladeThickness=1.2,bladeWidth=10,bladeHeight=57,headHeight=40,headDepth=3,holeRadius=30) {
    union() {
        //head
        difference() {
            translate([holeRadius,0,(headHeight+bladeHeight)/2])
                cube([holeRadius,bladeWidth,bladeHeight-headHeight],center=true);
            difference() {
                rotate_extrude(angle=360) {
                    polygon([ [2*holeRadius, headHeight-0.001], [holeRadius+headDepth, headHeight-0.001], [holeRadius, bladeHeight+0.001], [2*holeRadius, bladeHeight+0.001] ]);
                }
            }
        }
        //blade
        translate([0,0,bladeHeight/2])
            cube([bladeWidth,bladeThickness,bladeHeight],center=true);
    }
    
}