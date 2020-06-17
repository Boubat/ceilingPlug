use <head.scad>

module hook(bladeThickness=1.2,bladeWidth=15,bladeHeight=45,headHeight=40,headDepth=2,holeRadius=30) {
    union() {
        //head
        translate([bladeThickness/2,0,headHeight])
            head(radius=holeRadius,depth=headDepth,width=bladeWidth,thickness=bladeHeight-headHeight);
        //blade
        translate([0,0,bladeHeight/2])
            cube([bladeThickness,bladeWidth,bladeHeight],center=true);
    }
    
}