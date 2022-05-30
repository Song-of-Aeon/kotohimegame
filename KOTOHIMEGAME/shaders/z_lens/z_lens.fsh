//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform vec3 position;

void main()
{
	if(distance(v_vPosition.xy,position.xy) < position.z){
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	}
}
