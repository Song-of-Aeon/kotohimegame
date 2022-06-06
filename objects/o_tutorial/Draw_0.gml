if !surface_exists(lol) {
	lol = surface_create(640, 360);
}
surface_set_target(lol);
//draw_clear(c_dkgrey);
draw_sprite(s_tutorial, 0, 0, 0);

surface_reset_target();
