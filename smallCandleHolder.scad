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

simpleCandleHolder();

difference() {
  translate([0,0,-5]) cylinder(r=candleRadius+thickness, h=5.001);
  translate([0,0,-5.001]) cylinder(d=5.5, h=5);
}

translate([0,0,-9]) cylinder(d=3.5, h=9);