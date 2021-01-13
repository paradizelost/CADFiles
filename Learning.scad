$fn=30;
translate([0,30,0]) intersection(){
cube([6,6,6],center=true);
    cylinder(h=3,r=3.5);
}
translate([0,20,0]) difference(){
cube([6,6,6],center=true);
    cylinder(h=3,r=3.5);
}
translate([0,10,0]) union(){
cube([6,6,6],center=true);
    cylinder(h=3,r=3.5);
}




module plate(length,width,thickness){
    difference(){
translate([0,0,0]) cube([length,width,thickness]);
translate([length/2,width/2,0]) cylinder(r=.5,h=1);
}
}
translate([10,-2.5,0]) plate(6,6,1);

//rotate(a=45,v=[1,0,0]){ translate([20,-2.5,0]) plate(6,6,1);}

module bracket(length,width,thickness){
plate(length,width,thickness);
rotate(a=90,v=[1,0,0]) plate(length,width+thickness,thickness);
}
bracket(4,4,.5);


$fn=30;
mount_width=10;
mount_length=10 ;
mount_thickness=2;
mount_screw_hole_radius=mount_width/20;
startposx=30;
startposy=0;
startposz=0;
mscrew1pos=[startposx+5,startposy+5,startposz];
scalesize=1.4;
translate([startposx,startposy,startposz]) scale([scalesize,scalesize,1])  difference(){
cube([mount_width,mount_length,mount_thickness]);
translate([mount_width*.13,mount_length*.13,0]) cylinder(mount_thickness,mount_screw_hole_radius,mount_screw_hole_radius);
translate([mount_width*.87,mount_length*.13,0]) cylinder(mount_thickness,mount_screw_hole_radius,mount_screw_hole_radius);
translate([mount_width*.87,mount_length*.4,0]) cylinder(mount_thickness,mount_screw_hole_radius,mount_screw_hole_radius);
translate([mount_width*.87,mount_length*.79,0]) cylinder(mount_thickness,mount_screw_hole_radius,mount_screw_hole_radius);
translate([mount_width*.66,mount_length*.61,0]) cylinder(mount_thickness,mount_screw_hole_radius,mount_screw_hole_radius);
translate([mount_width*.26,mount_length*.61,0]) cylinder(mount_thickness,mount_screw_hole_radius*3,mount_screw_hole_radius*3);
}
