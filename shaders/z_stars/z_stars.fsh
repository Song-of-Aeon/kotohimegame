//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform sampler2D surface;

void main()
{
	//760,480
	//1024, 512
	/*
	if(texture2D(surface,(v_vPosition/(vec3(1024.,512.,1.)*2.)).xy).r == float(0x98)){
		return;
	}*/
	if(texture2D(surface,(v_vPosition/(vec3(1024.,512.,1.))).xy).r == 0.){
		gl_FragColor = v_vColour - (1.- v_vColour.aaaa);
		gl_FragColor.a = 1.;
	}
}