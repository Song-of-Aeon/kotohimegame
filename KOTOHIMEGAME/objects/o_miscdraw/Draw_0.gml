surface_set_target(global.surfaces.HUD);
draw_set_alpha(alpha);
draw_sprite(image, 0, x, y);
draw_set_color(c_black);
draw_set_alpha(1-count/60);
draw_rectangle(0, 0, 2000, 2000, false);
draw_set_alpha(1);
surface_reset_target();