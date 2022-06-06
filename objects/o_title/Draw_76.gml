if !surface_exists(lol) {
	lol = surface_create(640, 360);
}
surface_set_target(lol);

draw_clear(c_dkgrey);
state();
/*draw_text(300, 50, "I HATE JUNKO");
draw_text(100, 100, "START GAME");
draw_text(100, 150, "OPTIONS");
draw_text(100, 200, "QUIT GAME");

draw_text(80,100+(option*50),"->");*/

surface_reset_target();
