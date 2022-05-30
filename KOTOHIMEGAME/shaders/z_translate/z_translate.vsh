//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec3 v_worldPosition;
uniform vec3 movement;
uniform float round;

float Round2(in float num){
	return num - (mod(num,round));
}

void main() {
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
	object_space_pos = object_space_pos + vec4(movement,0.);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_worldPosition = (gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos).xyz;
	//gl_Position = vec4(Round2(gl_Position.x),Round2(gl_Position.y),Round2(gl_Position.z),gl_Position.w);
	//gl_Position = gl_Position.xyzw;
    
    v_vColour = in_Colour;
	//v_vColour += vec4(in_Normal.ggg/vec3(1.),1.);
    v_vTexcoord = in_TextureCoord;
}




