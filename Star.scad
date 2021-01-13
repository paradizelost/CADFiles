// updated for 2015.03 version to create one solid object, allowing for twists without stray parts.
// points          = number of points (minimum 3)
// outer           = radius to outer points
// inner           = radius to inner points
// depth           = how tall to make the 3D object
// rotation_offset = how many degrees from 0 to start the first point
// extrude_twist   = put a twist on things!
module Star(points, outer, inner, depth=10, rotation_offset=0, extrude_twist=0) {
	
	// polar to cartesian: radius/angle to x/y
	function x(r, a) = r * cos(a);
	function y(r, a) = r * sin(a);
	
	// angular width of each pie slice of the star
	increment = 360/points;
	
	// create a list / array of points to create the star, in sets of 2: the outer x,y point, followed by the innter x,y point
	points_array=[ for (p = [0:0.5:points-0.5]) let(a=x(outer,(increment*p)+rotation_offset), b=y(outer,(increment*p)+rotation_offset),c=x(inner,((increment*floor(p))+(increment/2))+rotation_offset), d=y(inner,((increment*floor(p))+(increment/2))+rotation_offset)) if(true) p==floor(p)?[a,b]:[c,d] ];
  
  	// make the object, in 3D, flat is boring!
        linear_extrude(height=depth, twist=extrude_twist) polygon(points=points_array);
  
}
$fn=30;
difference(){
    Star(5,52,20,5);
   translate([45,0,-1]) cylinder(22,1);   
}