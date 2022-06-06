/// @description Insert description here
// You can write your code in this editor
global.count++;


surface_set_target(global.surfaces.HUD);

//draw_sprite_stretched(s_menuui,0,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
gpu_set_blendmode(bm_add);
draw_sprite_stretched(s_titlereimu, 0, 0, 0, surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
gpu_set_blendmode(bm_normal);

draw_sprite_stretched(s_titletext, 0, 0, 0, surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
draw_sprite_stretched(s_menuui,1,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));

surface_reset_target();
