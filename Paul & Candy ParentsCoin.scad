cylinder(2,34,34,false);
color("blue") translate([-27.7,10,0])linear_extrude(height=3){
text("Paul & Candy", size = 7.5, h=5, font = "Calibri:style=Bold");
}
color("blue") translate([-30,-1.5,0])linear_extrude(height=3){
text("You're going to be", size=6, h=5, font = "Calibri:style=Bold");
}
color("blue") translate([-29,-13,0])linear_extrude(height=3){
text("GRANDPARENTS!", size = 6, h=5, font = "Calibri:style=Bold");
}
color("red")
    rotate_extrude()
        translate([34, 0])
            square([2,4]);
color("red")
    rotate_extrude()
        translate([6.5, -1])
            square([29.5,2]);

module flatstuff()
{
    square(10);
    translate([5,10,0]) circle(5);
    translate([10,5,0]) circle(5);
}
rotate([0,0,45]) color("green") translate([-22.5,-22.5,0]) linear_extrude(height=3) flatstuff();