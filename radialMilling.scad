module radialMilling(pathRadius, toolRadius, depth, angle, tolerance) {
  union() {
    difference() {
      difference() {
        cylinder(h=depth, r=pathRadius+toolRadius-tolerance, center=true);
        cylinder(h=depth+0.01, r=pathRadius-toolRadius+tolerance, center=true);
      }
      rotate([0, 0, angle/2]) {
        translate([0, pathRadius+toolRadius, 0]) {
          cube([2*(pathRadius+toolRadius+0.001), 2*(pathRadius+toolRadius+0.001), depth+0.001], center=true);
        }
      }
      rotate([0, 0, -angle/2]) {
        translate([0, -pathRadius-toolRadius, 0]) {
          cube([2*(pathRadius+toolRadius+0.001), 2*(pathRadius+toolRadius+0.001), depth+0.001], center=true);
        }
      }
    }
    rotate([0, 0, angle/2]) {
      translate([pathRadius, 0, 0]) {
        cylinder(h=depth, r=toolRadius-tolerance, center=true);
      }
    }
    rotate([0, 0, -angle/2]) {
      translate([pathRadius, 0, 0]) {
        cylinder(h=depth, r=toolRadius-tolerance, center=true);
      }
    }
  }
}