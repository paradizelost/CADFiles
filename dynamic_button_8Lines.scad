$fn=60;
scale_width=2;
scale_height=2;
scale_thickness=1;
scale_size=[scale_width,scale_height,scale_thickness];
// How wide and thick do you want the button
button_width=100;
button_thickness=4;

//this is for the hole in the bottom for the magnet, set to 0 if you don't want one.
magnet_width=5;
magnet_thickness=1;

//where to start the text from the left side of the button
row_one_start=-(button_width*.66);
row_two_start=-(button_width*.8);
row_three_start=-(button_width*.93);
row_four_start=-(button_width*.93);
row_five_start=-(button_width*.93);
row_six_start=-(button_width*.85);
row_seven_start=-(button_width*.75);
row_eight_start=-(button_width*.55);

//Text for each row of the button
row_one_text="ABCDEFGHIJ";
row_two_text="ABCDEFGHIJKL";
row_three_text="ABCDEFGHIJKLM";
row_four_text="ABCDEFGHIJKLMN";
row_five_text="ABCDEFGHIJKLMN";
row_six_text="ABCDEFGHIJKLM";
row_seven_text="ABCDEFGHIJKL";
row_eight_text="ABCDEFGH";

//font size per row
row_one_fontsize=button_width/5.5;
row_two_fontsize=button_width/5.5;
row_three_fontsize=button_width/5.5;
row_four_fontsize=button_width/5.5;
row_five_fontsize=button_width/5.5;
row_six_fontsize=button_width/5.5;
row_seven_fontsize=button_width/5.5;
row_eight_fontsize=button_width/5.5;

font_style="Calibri:style=Bold";
difference(){
    scale(scale_size){
        difference(){
            cylinder(button_thickness,button_width,button_width);
            translate([0,0,button_thickness-1.9]) 
            cylinder(button_thickness-2,button_width-2,button_width-2);
        }
    }
// This is for the button on the bottom. This DOES NOT SCALE or the magnet won't fit.
translate([0,0,-1]) cylinder(magnet_thickness+1,magnet_width,magnet_width);
}
//Row 1
scale(scale_size) { 
    translate([row_one_start,button_width*.6,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_one_text,size=row_one_fontsize, font = font_style);
}
// Row 2
scale(scale_size) { 
    translate([row_two_start,button_width*.4,magnet_thickness+.1]) 
      linear_extrude(height=button_thickness-magnet_thickness-.1) 
        text(row_two_text,size=row_two_fontsize, font = font_style);
}
//Row 3
 scale(scale_size) {    
     translate([row_three_start,button_width*.2,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_three_text,size=row_three_fontsize, font = font_style);
}
//Row 4
scale(scale_size) { 
    translate([row_four_start,button_width*0,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_four_text,size=row_four_fontsize, font = font_style);
}
//Row 5
scale(scale_size) { 
    translate([row_five_start,-button_width*.2,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_five_text,size=row_five_fontsize, font = font_style);
}
//Row 6
scale(scale_size) { 
    translate([row_six_start,-button_width*.4,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_six_text,size=row_six_fontsize, font = font_style);
}
//Row 6
scale(scale_size) { 
    translate([row_seven_start,-button_width*.6,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_seven_text,size=row_seven_fontsize, font = font_style);
}
//Row 6
scale(scale_size) { 
    translate([row_eight_start,-button_width*.8,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_eight_text,size=row_eight_fontsize, font = font_style);
}