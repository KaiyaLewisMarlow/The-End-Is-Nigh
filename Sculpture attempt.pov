//requirements: 
//lightsource, basic shapes, # declare at least once, readability (names are useful, things are grouped well), modifiability 

background {
	rgb<1,1,1>
}

camera {
	location  
		<-10,2,-10>
	
	look_at 
		<0,0,0>
	
}

light_source {
	<5,8,-5>
	rgb <1,1,1>
}

#declare Bodytone=texture {
	pigment {
		rgb <0,1,1>
	}
}

#declare Red=texture {
	pigment {
		rgb <1,0,0>
	}
}

//head
sphere {
	<0,3.7,0>
	.9
	texture {
		Bodytone
			}
}
//neck
cone {
	<0,4,0>
	.3
	<0,2,0>
	.4
	texture {
		Bodytone
	}
}


//chest
cone {
	<0,1,0>
	.64
	<0,.2,0>
	.4
	texture {
		Bodytone
	}
	scale <1.8,2,0>
}


//shoulders
cone {
	<-1.2,2.12,0>
	.4
	<1.2,2.12,0>
	.4
	
	texture {
		Bodytone
			}
	scale <0,0,1.3>

}
	
//leg 1
cone {
	<-.59,-1,0>
	.55
	<-.8,-6,0>
	.2
	texture {
		Bodytone
	}
}	

//leg 2
	cone {
		<.5,-.8,0>
		.55
		<1,-6,1>
		.2
		texture {
			Bodytone
		}
	}

	
	
//hips
cone {
	<0,.3,0>
	.4
	<0,-.7,0>
	.6	
	texture {
		Bodytone
	}
	scale <2,1.5,0>
}

//Silly hat!!
cone {
	<0,3.8,-.2>
	1.3
	<-1,8,2>
	.2
	texture {
		pigment {
			rgb <1,1,0>
		}
	}
}

//Brim!!!
torus {
	1.2
	.25
	rotate 10*z
	rotate 30*x	
	translate <0,3.7,-.2>
	texture {
		Red
	}
}
	
	
//bobble thing!!!
sphere {
	<-1,8,2>
	.3
	texture {
		Red
	}
}

//pedestal 
box {
	<-4,-6,-4>
	<4,-7,4>
	texture {
		pigment {
			rgb <1,1,1>
		}
	}
}

//floor
plane {
	<0,-7,0>
	7
	texture {
		pigment {
			rgb <1,1,1>
		}
	}
}

