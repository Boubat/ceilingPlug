$fa = 0.1;
$fs = 0.01;

use <bottomRing.scad>
use <hook.scad>
use <finger.scad>
use <hexagonalHole.scad>

holeRadius=32;
bladeWidth=20;
headDepth=3;
headHeight=38;
bladeThickness=1.2;
bladeHeight=42;
bottomRingAperture=30;
fingerHeight=20;
fingerRadius=10;
fingerThickness=2;
fingerSpacing=0.5;

bladeToCenter = sqrt( holeRadius*holeRadius - bladeWidth*bladeWidth/4) - bladeThickness/2;

// bottom ring
difference() {
    rotate([0,0,90])
        bottomRing(outerRadius=holeRadius,radialThickness=5,height=5,withAperture=true,aperture=bottomRingAperture);
    translate([22,0,2]) {
        hexagonalHole(depth=3.001);
        cylinder(h=5,r=2,center=true);
    }
    translate([-22,0,2]) {
        hexagonalHole(depth=3.001);
        cylinder(h=5,r=2,center=true);
    }
}



// hooks
mirror([1,0,0]) {
    translate([bladeToCenter,0,0])
        hook(holeRadius=holeRadius,bladeWidth=bladeWidth,bladeHeight=bladeHeight,headHeight=headHeight,headDepth=headDepth,bladeThickness=bladeThickness);
}
translate([bladeToCenter,0,0])
    hook(holeRadius=holeRadius,bladeWidth=bladeWidth,bladeHeight=bladeHeight,headHeight=headHeight,headDepth=headDepth,bladeThickness=bladeThickness);



// fingers
translate([0,(fingerThickness+fingerSpacing)/2,0]) {
    finger(innerRadius=fingerRadius,height=fingerHeight,thickness=fingerThickness,bladeHeight=bladeHeight,bladeThickness=bladeThickness,beamLength=bladeToCenter);
}
translate([0,-(fingerThickness+fingerSpacing)/2,0]) {
    rotate([0,0,180])
        finger(innerRadius=fingerRadius,height=fingerHeight,thickness=fingerThickness,bladeHeight=bladeHeight,bladeThickness=bladeThickness,beamLength=bladeToCenter);
}