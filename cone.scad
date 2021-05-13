module cone(bottomRadius, topRadius, height) {
  rotate_extrude() {
    polygon([[0,0],[0,height],[topRadius,height],[bottomRadius,0]]);
  }
}