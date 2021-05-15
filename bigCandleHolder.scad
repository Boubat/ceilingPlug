$fa = 0.1;
$fs = 0.01;

use <cone.scad>
use <simpleCandleHolder.scad>

candleRadius = 10.5;
thickness = 1;

holderOuterDiameter = 5;
holderInnerDiameter = 4;
holderHoleDepth = 25;

holderHeight = 15;
waxDepth = 7;

armLength = 15;
armWidth = 7;

difference() {
  union() {
    translate([armLength+candleRadius,0,-holderHeight/2]) simpleCandleHolder();
    translate([armLength/2,0,0]) cube([armLength,armWidth,holderHeight/2], center=true);

    rotate([0,0,120]) {
    translate([armLength+candleRadius,0,-holderHeight/2]) simpleCandleHolder();
    translate([armLength/2,0,0]) cube([armLength,armWidth,holderHeight/2], center=true);
    }

    rotate([0,0,240]) {
    translate([armLength+candleRadius,0,-holderHeight/2]) simpleCandleHolder();
    translate([armLength/2,0,0]) cube([armLength,armWidth,holderHeight/2], center=true);
    }
  }
  translate([0,0,-5]) cylinder(d=5.5, h=10.001, center=true);
}
translate([0,0,-25/2]) cylinder(d=3.5, h=25, center=true);