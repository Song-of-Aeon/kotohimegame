surface_set_target(global.surfaces.screen2);
if room = target {
	draw_sprite(s_doors, 0, 0+clamp(-(count)*8, -320, 0), 0);
	draw_sprite_ext(s_doors, 0, 320+clamp((count)*8, 0, 320)+320, 0, -1, 1, 0, c_white, 1);
} else {
	draw_sprite(s_doors, 0, 0+clamp(count*32-320, -320, 0), 0);
	draw_sprite_ext(s_doors, 0, 640-clamp(count*32, 0, 320)+320, 0, -1, 1, 0, c_white, 1);
}
//draw_sprite(s_doors, 0, 10, 10);
surface_reset_target();