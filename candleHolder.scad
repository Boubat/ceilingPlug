use <cone.scad>

module candleHolder(candleRadius=11, bottomRadius=15, topRadius=25, height=50, coneThickness=2, holderThickness=5) {
  difference() {
    cone(bottomRadius=bottomRadius, topRadius=topRadius, height=height);
    difference() {
      cone(bottomRadius=bottomRadius, topRadius=topRadius, height=height);
      cone(bottomRadius=bottomRadius-coneThickness, topRadius=topRadius-coneThickness, height=height);
      translate([0,0,height]) cube([max(topRadius,height)*2,max(topRadius,height)*2,holderThickness],center=true);
      translate([0,0,0]) cube([max(topRadius,height)*2,max(topRadius,height)*2,holderThickness],center=true);
      translate([0,height,height]) cube([holderThickness,max(topRadius,height)*2,max(topRadius,height)*2],center=true);
    }
    translate([0,0,height/2+2]) cylinder(r=candleRadius, h=height, center=true);
    translate([0,0,20]) cone(bottomRadius=bottomRadius-coneThickness, topRadius=topRadius-coneThickness, height=height);
  }
}

