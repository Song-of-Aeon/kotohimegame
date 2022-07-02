surface_set_target(global.surfaces.HUD);
if count%20 < 10 {
	draw_sprite_ext(s_soul, 0, 640, 360, 2, 2, 0, c_white, 1);
	
} else if count < 60 {
	draw_sprite(s_kotohime, 0, 640, 360);
}
surface_reset_target();