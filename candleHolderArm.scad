module candleHolderArm(smallHeight=15, bigHeight=20, length = 30, separations=2, thickness=5, width=10) {
  translate([-width/2,0,smallHeight/2]) {
    rotate([0,90,0]) {
      linear_extrude(width) {
        difference() {
          polygon([ [0,0], [0,length], [bigHeight,length], [smallHeight,0]]);
          for (i = [0:separations-1]) {
            p1 = [thickness, thickness + i*(length-thickness)/separations];
            p2 = [thickness, (i+1)*(length-thickness)/separations];

            p3Coefficient = ((i+1)*(length-thickness)/separations)/length;
            p3 = [ smallHeight + p3Coefficient*(bigHeight-smallHeight) - thickness, (i+1)*(length-thickness)/separations];

            p4Coefficient = (thickness + i*(length-thickness)/separations)/length;
            p4 = [smallHeight + p4Coefficient*(bigHeight-smallHeight) - thickness, thickness + i*(length-thickness)/separations];
            polygon([p1,p2,p3,p4]);
          }
        }
      }
    } 
  }
}