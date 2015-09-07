background {
	rgb <1,1,1>
	}
	
camera {
	location <0,3,-5>
	look_at <0,0,0>
}
	
light_source {
	<1,0,-10>
	rgb <0,1,0>
}
		
sphere {
	<0,1,0> 
	1 
	texture { 
		pigment { 
			rgb <1,1,1>
			}
	}
}

plane {
	<0,1,0>
	0
	texture { 
		pigment {
			rgb <0,0,0>
		}
	}
}

cone {
	<0,1,10>
	1
	<0,1,1>
	1
	texture {
		pigment {
			rgb <1,1,1>
		}
	}
}

torus {
	2 //outer radius
	.5// inner radius
	translate <0,.5,0>
	texture {
		pigment {
			rgb <0,1,0>
		}
	}
}

sphere {
	<0,2.8,-6>
	.1
	texture {
		pigment {
			rgb <1,1,1>
		}
	}
}


// next project: make a statue