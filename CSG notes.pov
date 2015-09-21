// CSG!

background { 
	rgb <1,1,1>
}

#declare FrontCameraPos= <0,0,-10>;
#declare SideCameraPos= <5,0,0>;

camera{
	location FrontCameraPos
	look_at <0,0,0>
}

light_source{
	<2,5,-2>
	rgb <1,1,1>
}

#declare Ball=sphere{
	<0,0,0>
	2
}

#declare SolidBlue=texture{
	pigment {
		rgbf<0,0,1,.7>//f stands for filter, changes transparency
	}
};

#declare SolidRed=texture{
	pigment {
		rgbf<1,0,0,.3>
	}
};

object{
	Ball
	texture { SolidBlue}
}

object{
	Ball
	translate <1,0,0>
	texture { SolidRed }
}

	
//four types of Constructive Solid Geometry!

//union combines the two, basically for # declaring things
	
 //merge for see-through objects, combines things into a single outside unit
	
//intersection creates the connected bits

//difference subtracts one oject from the other
	
	
	
	
	