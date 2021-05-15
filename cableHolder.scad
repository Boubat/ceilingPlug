use <cone.scad>
use <hexagonalHole.scad>

module cableHolder(length=34, height=4, width=10, screwRadius=2) {
  difference() {
    cube([length,width,height], center=true);
    translate([(length-width)/2,0,0]) {
      cylinder(h=height + 0.001, r=screwRadius, center=true);
      translate([0,0,-(height/2 + 0.001)]) {
        cone(bottomRadius=3.5, topRadius=screwRadius, height=3);
      }
    }
    translate([(width-length)/2,0,0]) {
      cylinder(h=height + 0.001, r=screwRadius, center=true);
      translate([0,0,-(height/2 + 0.001)]) {
        hexagonalHole(depth=3);
      }
    }

    cableRadius = 3.5;
    cableSqueeze = 1;
    holderRadius = ((length-2*width) / 2) * 1/(sin(2*atan(2*(cableRadius-cableSqueeze)/(length-2*width))));
    translate([0,0,holderRadius+height/2-(cableRadius-cableSqueeze)]) {
      rotate([90,0,0]) {
        cylinder(h=width+0.001, r=holderRadius, center=true);
      }
    }
  }
}
