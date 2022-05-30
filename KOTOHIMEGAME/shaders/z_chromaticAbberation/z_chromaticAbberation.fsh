//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor.r = (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord+vec2(1.,0.) )).r;
	gl_FragColor.g = (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord+vec2(0.00,1.) )).g;
	gl_FragColor.b = (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord+vec2(-1.,0.) )).b;
	gl_FragColor.a = gl_FragColor.r/3. + gl_FragColor.g/3. + gl_FragColor.b/3.;
}
