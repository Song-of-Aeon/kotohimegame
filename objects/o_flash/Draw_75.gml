//surface_set_target(surface);
//draw_clear_alpha(color, (duration-count)/duration);
draw_set_alpha((duration-count)/duration)
draw_set_color(color);
draw_rectangle(-999, -999, 999, 999, false);
draw_set_color(c_white);
draw_set_alpha(1);
//surface_reset_target();

c
if count >= duration instance_destroy();