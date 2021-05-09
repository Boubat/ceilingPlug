$fa = 0.1;
$fs = 0.01;

use <bottomRing.scad>
use <hexagonalHole.scad>
use <radialMilling.scad>

// Ceiling hole:
// diameter = 65 mm
// depth = 55 mm
// rim height = 38 mm
// rim depth = 10 mm

tolerance=0.3;
ringInnerRadius=25.5;
bottomRingAperture=30;
height=4;
millingDepth=1;
millingPathRadius=35;
millingToolRadius=2.2;

// Adapter milling
union() {
  // bottom ring
  difference() {
      rotate([0,0,90])
          bottomRing(outerRadius=millingPathRadius+millingToolRadius-tolerance,radialThickness=2*millingToolRadius+7,height=height,withAperture=true,aperture=bottomRingAperture);
      translate([22,0,height/2]) {
          cylinder(h=5.001,r=2,center=true);
      }
      translate([-22,0,height/2]) {
          cylinder(h=5.001,r=2,center=true);
      }
  }

  translate([0,0,height+millingDepth/2]){
    difference(){
      cylinder(h=millingDepth,r=millingPathRadius+millingToolRadius-tolerance,center=true);
      cylinder(h=millingDepth+0.001,r=millingPathRadius-millingToolRadius+tolerance,center=true);
    }
  }

  
}
