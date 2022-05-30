//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 newColor = vec3((color.x+color.y+color.z)/3.0);
    gl_FragColor = vec4(newColor,1.);
}
