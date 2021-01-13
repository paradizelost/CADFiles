$fn=60;
difference(){
cube(50,50,center=true);
cylinder(40,30,30,center=true);
}
difference(){
rotate(30,0,0) cube(38,38,center=true);
cylinder(30,25,25,center=true);
}
difference(){
    rotate(60,0,0) cube(25,25,center=true);
    cylinder(20,15,15,center=true);
}
sphere(9);