//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec3 v_worldPosition;

float fogStart = 0.;
float fogEnd = 10000.;
//https://github.com/DragoniteSpam-GameMaker-Tutorials/3DTutorial19FogShaders
//THANKS YOUTUBE TUTORIAL I STILL HAVE NO FUCKIN CLUE HOW FOG WORKS BUT I WATCHED THE WHOLE THING 
void main() {
    vec4 starting_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    //$360D33
    vec3 fogOrigin = vec3(0.0, 0.0, 0.0);
    vec4 fogColor = vec4(float(0x33)/256., float(0x0D)/256., float(0x36)/256., 1.0);
	
    float dist = length(v_worldPosition - fogOrigin);
    
    float fraction = clamp((dist - fogStart) / (fogEnd - fogStart), 0.0, 1.0);
    //float fraction = clamp(fogStart / max(dist, 0.01), 0.0, 1.0);
    
    vec4 final_color = mix(starting_color, fogColor, fraction);
    
    gl_FragColor = final_color;
	//gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}