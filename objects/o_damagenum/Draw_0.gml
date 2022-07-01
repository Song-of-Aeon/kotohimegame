surface_set_target(global.surfaces.HUD);
draw_set_color(c_red);
draw_set_font(ft_damage);
draw_text(x, y, damage);
surface_reset_target();