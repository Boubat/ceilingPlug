$fa = 0.1;
$fs = 0.01;

use <cone.scad>
use <cableHolder.scad>
use <screwHolder.scad>

length = 44;
screwRadius = 2;
height = 5;
screwHeadHeight = 3;

translate([2,0,2.5]) {
  rotate([-90,0,90]){
    cableHolder();
  }
}
translate([0,-(length/2-0.001),0]) {
  screwHolder(reverse=false);
}
translate([0,length/2-0.001,0]) {
  screwHolder(reverse=true);
}