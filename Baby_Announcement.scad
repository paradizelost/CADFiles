module flatstuff()
{
    square(10);
    translate([5,10,0]) circle(5);
    translate([10,5,0]) circle(5);
}
cylinder(2,34,34,false);
color("blue") translate([-25,10,0])linear_extrude($fn=300,height=3){
text("Baby Hamik", size = 7.5, h=5, font = "Calibri:style=Bold");
}
color("blue") translate([-15,-4,0])linear_extrude($fn=300,height=3){
text("DUE", size=12, h=5, font = "Calibri:style=Bold");
}
color("blue") translate([-30,-13,0])linear_extrude($fn=300,height=3){
text("November 2, 2017", size = 6, h=5, font = "Calibri:style=Bold");
}


color("red")
    rotate_extrude($fn=300)
        translate([34, 0])
            square([2,4]);
color("red")
    rotate_extrude($fn=300)
        translate([6.5, -1])
            square([29.5,2]);


rotate([0,0,45]) color("green") translate([-22.5,-22.5,0]) linear_extrude(height=3) flatstuff();