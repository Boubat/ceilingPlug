module hexagonalHole(radius=4,depth=10) {
  p1 = [radius*cos(30),radius*sin(30)];
  p2 = [radius*cos(90),radius*sin(90)];
  p3 = [radius*cos(150),radius*sin(150)];
  p4 = [radius*cos(210),radius*sin(210)];
  p5 = [radius*cos(270),radius*sin(270)];
  p6 = [radius*cos(330),radius*sin(330)];

  translate([0,0,depth/2])
    linear_extrude(depth,center=true) {
      polygon([p1,p2,p3,p4,p5,p6]);
    }
}