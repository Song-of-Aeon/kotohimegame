//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
//attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main()
{
	float rand = mod((time*in_Position.x*in_Position.y)/100.,1.);
	//float rand = 10.;
    vec4 object_space_pos = vec4( in_Position.x+(rand*5.), in_Position.y+(rand*5.), in_Position.z+rand, 1.0);
    // vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);

	gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    //v_vTexcoord = in_TextureCoord;
}
