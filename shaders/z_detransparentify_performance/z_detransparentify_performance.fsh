//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	if(gl_FragColor.rgb == vec3(0x99, 0x99, 0.)/vec3(255.)){
		//gl_FragColor.b = 1./255.;
		gl_FragColor.rgb = vec3(0.);
	}
	gl_FragColor.a *= 255.;
}
