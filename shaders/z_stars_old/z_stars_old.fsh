//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vScreenSpace;
uniform sampler2D starTex;

void main()
{
    gl_FragColor = v_vColour * texture2D( starTex, v_vScreenSpace );
	gl_FragColor.a =1.;
}
