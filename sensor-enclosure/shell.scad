// back and roof
translate([37,0,00])
rotate([90,0,-90])
linear_extrude(height=75) // 73 frame length + 1mm each side
polygon([
 [0,0],
 [0,23+3*sqrt(2)],
 [37,37+23+3*sqrt(2)],
 [37,37+23],
 [3,26],
 [3,0]
]);

// left
translate([-38,0,0])
side();

translate([-38,-34,0])
cube([1,1,60]);

translate([-38,-3,0])
rotate([90,0,0])
scale([2,2,34])
skirt();

// right
translate([40,0,0])
side();

translate([36,-34,0])
cube([1,1,60]);

translate([37,-3,0])
rotate([90,0,0])
scale([-2,2,34])
skirt();


module side() {
 rotate([90,0,-90])
 linear_extrude(height=3)
 polygon([
  [0,0],
  [0,23+3*sqrt(2)],
  [37,37+23+3*sqrt(2)],
  [37,0]
 ]);
}

module skirt() {
 linear_extrude(height=1)
 polygon([
  [0,0],
  [0,1],
  [1,0]
 ]);
}
