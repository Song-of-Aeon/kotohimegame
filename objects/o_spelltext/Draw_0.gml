draw_set_halign(fa_right);
draw_set_color(c_white);
draw_text(x, y, name);
if name != "" {
	draw_line(x, y+12, x-200, y+12);
}
draw_set_halign(fa_left);
y = lerp(y, 20, .05);