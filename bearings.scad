$fn=30;
center_size=6;
width=20;
thickness=5;
bearing_position=center_size+5;
square_pos=bearing_size + 2;
bearing_size=2.5;
number_of_bearings=center_size*1.14;
rotate_extrude(){
difference(){
union(){
            translate ([center_size,-thickness/2,0]) 
                square([bearing_size*4,thickness]);
       }
            translate ([bearing_position,0,0]) 
                circle(bearing_size+.25);
}
}


for (ball = [0:(360/number_of_bearings)-1:360]){
   rotate(ball) 
        translate([bearing_position,0,0]) 
            sphere(bearing_size);
}