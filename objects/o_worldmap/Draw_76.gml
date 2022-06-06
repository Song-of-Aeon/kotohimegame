surface_set_target(global.surfaces.HUD);
draw_clear(c_black);
surface_reset_target();

surface_set_target(global.surfaces.HUD);

draw_sprite_stretched(s_menuui,0,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
draw_sprite_stretched(s_menuui,1,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
draw_sprite_stretched(s_titlereimu, 0, 0, 0, surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0,0,1000,1000,false);
//draw_sprite_stretched(s_titletext, 0, 0, 0, surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
surface_reset_target();
