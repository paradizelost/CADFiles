$fn = 500;
translate([0, 60, 0]) 
      polygon( points=[[1,0],[1,10],[5,5],[4,5],[4,4],[2,4],[2,0]]);

color("green")
    translate([0, 60, 0])
        rotate_extrude($fn = 300)
          polygon( points=[[1,0],[1,10],[5,5],[4,5],[4,4],[2,4],[2,0]]);
          
          

difference() {
   cylinder(r = 16, h = 2);
   cylinder(r = 4, h = 38);
}

difference() {
  cylinder(r = 14.5, h = 36);cylinder(r = 4, h = 38);
}

