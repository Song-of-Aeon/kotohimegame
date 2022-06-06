//
// Simple passthrough fragment shader
//
//thanks https://forum.yoyogames.com/index.php?threads/particle-trails-on-a-surface.3919/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor.rgb *= gl_FragColor.a;
}