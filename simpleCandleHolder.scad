use <cone.scad>

module simpleCandleHolder(candleRadius=10, thickness=1, holderHeight=15, waxDepth=7) {
  difference() {
    cylinder(r=candleRadius+thickness, h=holderHeight);
    translate([0,0,2]) cylinder(r=candleRadius, h=15.001);
  }
  translate([0,0,holderHeight]) {
    difference() {
      cone(bottomRadius=candleRadius+thickness ,topRadius=candleRadius+thickness+waxDepth, height=3);
      translate([0,0,thickness]) cone(bottomRadius=candleRadius ,topRadius=candleRadius+waxDepth, height=3);
      translate([0,0,-0.001]) cylinder(r=candleRadius, h=thickness+0.002);
    }
  }
}