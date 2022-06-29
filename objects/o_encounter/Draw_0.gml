surface_set_target(global.surfaces.HUD);
if count%20 < 10 {
	draw_sprite(s_soul, 0, 640, 360);
	
} else {
	draw_sprite(s_kotohime, 0, 640, 360);
}
surface_reset_target();