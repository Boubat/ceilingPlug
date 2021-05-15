use <cone.scad>

module screwHolder(height=5, screwRadius=2, screwHeadHeight=3, reverse=false) {
  difference() {
    union() {
      cylinder(h=height, r=5, center=true);
      linear_extrude(5, center=true) {
        if (reverse) {
          polygon([[-5,0], [5,0], [4,-5], [0,-5]]);
        } else {
          polygon([[-5,0], [5,0], [4,5], [0,5]]);
        }
      }
    }
    cylinder(h=height + 0.001, r=screwRadius, center=true);
    translate([0,0,height/2-screwHeadHeight + 0.001]) {
      cone(bottomRadius=screwRadius, topRadius=3.5, height=screwHeadHeight);
    }
  }
}