module finger(innerRadius=7,radialThickness=1,outerRadius=8,thickness=2,height=20,bladeHeight=45,bladeThickness=1,beamThickness=3,beamLength=30) {
    translate([0,0,height]){
        rotate([90,0,0]) {
            linear_extrude(height=thickness,center=true) {
                union(){
                    // ring
                    difference() {
                        circle(r=innerRadius+radialThickness);
                        circle(r=innerRadius);
                    }
                    // blade
                    bladeLength=bladeHeight-height-innerRadius-radialThickness/2;
                    translate([0,innerRadius+radialThickness/2+bladeLength/2,0])
                        square([bladeThickness,bladeLength],center=true);
                    // beam
                    translate([beamLength/2,innerRadius+radialThickness/2+bladeLength-beamThickness/2,0])
                        square([beamLength,beamThickness],center=true);
                }
            }
        }
    }
}