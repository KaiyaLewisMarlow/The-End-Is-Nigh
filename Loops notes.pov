background { 
	rgb <1,1,1>
}

#declare FrontCameraPos= <0,0,-50>;
#declare SideCameraPos= <5,0,0>;

camera{
	location FrontCameraPos
	look_at <0,0,0>
}

light_source{
	<4,3,-2>
	rgb <1,1,1>
}

#declare LinkRadius= .3;
#declare HalfLinkWidth=1;
#declare HalfTorus= difference {
	torus{
		HalfLinkWidth
		LinkRadius
		rotate<90,0,0>
	}
	box{
		<-1-LinkRadius,-1-LinkRadius,-LinkRadius>
		<1+LinkRadius,0,LinkRadius>
		}
}


#declare LinkLength= 4; //linklength must be <2*HalfLinkWidth
#declare SideLength = LinkLength-2*HalfLinkWidth;
#declare HalfSideLength= SideLength/2;
#declare LinkSide= cylinder{
	<0,HalfSideLength,0>
	<0,-HalfSideLength,0>
	LinkRadius
};

#declare ChainLink=
union {
	object{
		HalfTorus
		translate<0,HalfSideLength,0>
	}
	object {
		HalfTorus
		rotate <180,0,0>
		translate <0,-HalfSideLength,0>
	}
	object {
		LinkSide
		translate 
			<HalfLinkWidth,0,0>
	}
	object{
		LinkSide
		translate <-HalfLinkWidth,0,0>
	}
};

#declare TwoLinks =
union{
	object{
		ChainLink
	}
	object{
		ChainLink
		rotate<0,90,0>
		translate<0,LinkLength-(2*LinkRadius),0> //gravity
	}
};

#declare NumLinks=30;
		
#declare FullChain = union{
	#declare Index=0;
	#while (Index<NumLinks)
	object {
		TwoLinks
	}
	object {
		TwoLinks
		translate <0,Index*(LinkLength*2-LinkRadius*4),0>
	}
	#declare Index= Index +1;
	#end
};

object {
	FullChain
} 

	
			

