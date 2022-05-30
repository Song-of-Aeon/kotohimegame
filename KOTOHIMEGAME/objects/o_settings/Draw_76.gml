if !surface_exists(lol) {
	lol = surface_create(640, 360);
}
surface_set_target(lol);
draw_clear(c_dkgrey);
draw_text(100, 100, "SCALE");
draw_text(200,100,string(global.scale)+"x");

draw_text(100, 150, "MUSIC");
draw_line(200,155,300,155)
draw_circle(200+global.music,155,4,false);

draw_text(100, 200, "SFX");
draw_line(200,205,300,205)
draw_circle(200+global.volume,205,4,false);

draw_text(100, 250, "LANGUAGE");
draw_text(200,250,"English is the only option im sorry");

draw_text(100,300,"LEAVE");

draw_text(80,100+(option*50),"->");

surface_reset_target();