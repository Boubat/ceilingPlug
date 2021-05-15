$fa = 1;
$fs = 0.1;

use <candleHolder.scad>
use <scaleAdapter.scad>

bottomRadius = 15;
topRadius = 25;
height = 40;
coneThickness = 4;
holderThickness = 20;
candleRadius = 11;

translate([0,0,-10]) scaleAdapter();

candleHolder(bottomRadius=bottomRadius, topRadius=topRadius, candleRadius=candleRadius, height=height, coneThickness=coneThickness, holderThickness=holderThickness);
rotate([0,0,120]) candleHolder(bottomRadius=bottomRadius, topRadius=topRadius, candleRadius=candleRadius, height=height, coneThickness=coneThickness, holderThickness=holderThickness);
rotate([0,0,240]) candleHolder(bottomRadius=bottomRadius, topRadius=topRadius, candleRadius=candleRadius, height=height, coneThickness=coneThickness, holderThickness=holderThickness);