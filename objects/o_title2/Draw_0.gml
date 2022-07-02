/// @description Insert description here
// You can write your code in this editor
global.count++;


surface_set_target(global.surfaces.HUD);

draw_sprite_stretched(s_menuui,0,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));

//draw_sprite_stretched(s_titletext, 0, 0, 0, surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
draw_sprite(s_newtitletext, 0, 0, 100)
draw_sprite(s_titlemoon, file_exists("you've won again.kotohime2"), 1000, 250);
//draw_sprite_stretched(s_menuui,1,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));

surface_reset_target();
