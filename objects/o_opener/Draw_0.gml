/// @description Insert description here
// You can write your code in this editor
surface_set_target(global.surfaces.screen2);
var wid = surface_get_width(global.surfaces.screen2);
var hei = surface_get_height(global.surfaces.screen2);

//draw_sprite(s_when_uh,0,wid/2,hei/2);
if(keyboard_check_pressed(vk_anykey)) || true{
	room = TITLE	
}
if(count > 0)
draw_sprite_ext(s_splashscreen,0,wid/2,hei/2,count/100,count/100,count*(22),c_white,1);

surface_reset_target();
if(window_has_focus() && count <= 114)
count++;
if(count == 114){
	alarm[0] = 240;
}