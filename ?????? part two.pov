#declare Box=box{
	<-1,-1,-1> //smallest values
	<1,1,1> //largest values
}; //this designates 'Box' to look like this every time. semicolon ends the #declare

#declare SolidRed=texture {
	pigment {
		rgb<1,0,0>
	}
} ;//designates 'SolidRed' to mean that texture

#declare FrontCameraPos = <0,0,-10>;
#declare TopCameraPos = <0,10,0>;
#declare TopFrontAngleCameraPos = <0,3,-5>;

background {
	rgb <0,1,1>
}

camera {
	location TopFrontAngleCameraPos
	look_at <0,0,0>
}

box{
	Box
	pigment {
		rgb <0,0,1>
	}
	scale <1,2,1>
	rotate <0,2,45>
	translate <0,0,2>
}

light_source {
	<6,6,6>
	rgb <1,1,1>
}


// union, merge and difference are used to combine things. Difference creates a hollow in the shape of the new thing; Union keeps the geometry inside the thing,
// but intersect only keeps the inside bits and union makes them into the same object.
