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
row_three_start=-(button_width*.86);


//Text for each row of the button
row_one_text="FUTURE";
row_two_text="GREAT";
row_three_text="GRANDPA";


//font size per row
row_one_fontsize=button_width/4;
row_two_fontsize=button_width/4;
row_three_fontsize=button_width/4.5;


font_style="Verdana:style=Bold";

difference(){
union(){
    scale(scale_size){
        difference(){
            cylinder(button_thickness,button_width,button_width);
            translate([0,0,button_thickness-1.9]) 
            cylinder(button_thickness-2,button_width*.9,button_width*.9);
        }
    }
// This is for the button on the bottom. This DOES NOT SCALE or the magnet won't fit.

//Row 1
scale(scale_size) { 
    translate([row_one_start,button_width*.2,magnet_thickness+.1]) 
        linear_extrude(height=button_thickness-magnet_thickness-.1) 
            text(row_one_text,size=row_one_fontsize, font = font_style);
}
// Row 2
scale(scale_size) { 
    translate([row_two_start,-button_width*.08,magnet_thickness+.1]) 
      linear_extrude(height=button_thickness-magnet_thickness-.1) 
        text(row_two_text,size=row_two_fontsize, font = font_style);
}
//Row 3
scale(scale_size) { 
    translate([row_three_start,-button_width*.35,magnet_thickness+.1]) 
      linear_extrude(height=button_thickness-magnet_thickness-.1) 
        text(row_three_text,size=row_three_fontsize, font = font_style);
}
}
translate([0,0,-1]) cylinder(magnet_thickness+1,magnet_width,magnet_width);
}