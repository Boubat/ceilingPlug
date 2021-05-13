$fa = 0.1;
$fs = 0.01;

use <bottomRing.scad>
use <hexagonalHole.scad>
use <radialMilling.scad>
use <cone.scad>

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
millingAngularPath = 58.7;

// Adapter milling
union() {
  // bottom ring
  difference() {
      rotate([0,0,90])
          bottomRing(outerRadius=millingPathRadius+millingToolRadius-tolerance,radialThickness=2*millingToolRadius+7,height=height,withAperture=true,aperture=bottomRingAperture);
      translate([22,0,-0.002]) {
          cylinder(h=5.001,r=2);
          cone(bottomRadius=3.5, topRadius=2, height=3);
      }
      translate([-22,0,-0.001]) {
          cylinder(h=5.002,r=2);
          cone(bottomRadius=3.5, topRadius=2, height=3);
      }
  }
  rotate([0, 0, 0]) {
    translate([0, 0, height + millingDepth/2]) {
      radialMilling(pathRadius = millingPathRadius, toolRadius = millingToolRadius, depth = millingDepth, angle = millingAngularPath, tolerance = tolerance);
    }
  }
  rotate([0, 0, 90]) {
    translate([0, 0, height + millingDepth/2]) {
      radialMilling(pathRadius = millingPathRadius, toolRadius = millingToolRadius, depth = millingDepth, angle = millingAngularPath, tolerance = tolerance);
    }
  }
  rotate([0, 0, 180]) {
    translate([0, 0, height + millingDepth/2]) {
      radialMilling(pathRadius = millingPathRadius, toolRadius = millingToolRadius, depth = millingDepth, angle = millingAngularPath, tolerance = tolerance);
    }
  }
  rotate([0, 0, 270]) {
    translate([0, 0, height + millingDepth/2]) {
      radialMilling(pathRadius = millingPathRadius, toolRadius = millingToolRadius, depth = millingDepth, angle = millingAngularPath, tolerance = tolerance);
    }
  }
}
