$fa = 1;
$fs = 0.1;

use <candleHolder.scad>
use <scaleAdapter.scad>
use <candleHolderArm.scad>
use <scaleAdapter.scad>

bottomRadius = 15;
topRadius = 25;
height = 40;
coneThickness = 4;
holderThickness = 20;
candleRadius = 11;

difference() {
  union() {
    translate ([0,3,0]) {
      candleHolderArm(smallHeight=20, bigHeight=30, length = 28, separations=3, thickness=4);
      translate([0,43,-25]) {
        rotate([0,0,180]) candleHolder(bottomRadius=bottomRadius, topRadius=topRadius, candleRadius=candleRadius, height=height, coneThickness=coneThickness, holderThickness=holderThickness);
      }
    }

    rotate ([0,0,120]) {
      translate([0,3,0]) {
        candleHolderArm(smallHeight=20, bigHeight=30, length = 28, separations=3, thickness=4);
        translate([0,43,-25]) {
          rotate([0,0,180]) candleHolder(bottomRadius=bottomRadius, topRadius=topRadius, candleRadius=candleRadius, height=height, coneThickness=coneThickness, holderThickness=holderThickness);
        }
      }
    }

    rotate ([0,0,240]) {
      translate([0,3,0]) {
        candleHolderArm(smallHeight=20, bigHeight=30, length = 28, separations=3, thickness=4);
        translate([0,43,-25]) {
          rotate([0,0,180]) candleHolder(bottomRadius=bottomRadius, topRadius=topRadius, candleRadius=candleRadius, height=height, coneThickness=coneThickness, holderThickness=holderThickness);
        }
      }
    }
  }

  // cylinder(d=5.5, h=30, center=true);
}

scaleAdapter();

