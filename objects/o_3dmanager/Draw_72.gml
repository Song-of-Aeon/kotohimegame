/// @description Insert description here
// You can write your code in this editor
//draw_clear(c_black);
//if(!ISAAC.dietime)
if global.nether exit;
draw_clear(c_black);	
if(enabled){
	backgrounddraw();
	exit;
}

//gpu_set_fog(false,c_white,0,20); //THIS thing prevents all drawing from working unless its called on the first frame. but its a cheap call so i call it every frame.
