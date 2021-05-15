module scaleAdapter(outerDiameter=12, outerHoleDiameter=5, innerHoleDiameter=4, holeDepth=25, height=20) {
  rotate([180,0,0]) {
    difference() {
      cylinder(d=outerDiameter, h=height/2);
      cylinder(d=outerHoleDiameter+0.5, h=height/2 + 0.001);
    }
    cylinder(d=innerHoleDiameter-0.5, h=holeDepth);
    translate([0,0,-height/2]) cylinder(d=outerDiameter, h=height/2);
  }
}