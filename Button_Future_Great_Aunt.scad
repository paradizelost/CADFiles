$fn=60;
scale_width=.15;
scale_height=.15;
scale_thickness=1;
scale_size=[scale_width,scale_height,scale_thickness];
// How wide and thick do you want the button
button_width=100;
button_thickness=4;

//this is for the hole in the bottom for the magnet, set to 0 if you don't want one.
magnet_width=5;
magnet_thickness=1;

//where to start the text from the left side of the button
row_one_start=-(button_width*.75);
row_two_start=-(button_width*.65);
row_three_start=-(button_width*.55);

//Text for each row of the button
row_one_text="FUTURE";
row_two_text="GREAT";
row_three_text="AUNT";

//font size per row
row_one_fontsize=button_width/3;
row_two_fontsize=button_width/3;
row_three_fontsize=button_width/3;

font_style="Calibri:style=Bold";
difference(){
difference(){
    scale(scale_size){
        difference(){
            cylinder(button_thickness,button_width,button_width);
            translate([0,0,button_thickness-.5]) 
            cylinder(button_thickness-3,button_width-2,button_width-2);
        }
    }
// This is for the button on the bottom. This DOES NOT SCALE or the magnet won't fit.
translate([0,0,-1]) cylinder(magnet_thickness+1,magnet_width,magnet_width);
}
//Row 1
scale(scale_size) { 
    translate([row_one_start,button_width*.3,magnet_thickness+1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_one_text,size=row_one_fontsize, font = font_style);
}
// Row 2
scale(scale_size) { 
    translate([row_two_start,-button_width*.15,magnet_thickness+1]) 
      linear_extrude(height=button_thickness-magnet_thickness-.1) 
        text(row_two_text,size=row_two_fontsize, font = font_style);
}
//Row 3
 scale(scale_size) {    
     translate([row_three_start,-button_width*.6,magnet_thickness+1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_three_text,size=row_three_fontsize, font = font_style);
}
}