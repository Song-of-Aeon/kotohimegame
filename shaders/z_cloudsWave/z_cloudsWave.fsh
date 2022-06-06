//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
   	vec2 texCoord = (v_vTexcoord*vec2(8.0));
	texCoord.x = mod(texCoord.x,0.5);
	texCoord.y = mod(texCoord.y ,0.5);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, texCoord);
	//gl_FragColor = vec4(0.5);
}
