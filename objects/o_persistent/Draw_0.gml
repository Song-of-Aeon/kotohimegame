surface_set_target(global.surfaces.border);
draw_sprite_stretched(tex_based,1,0,0,surface_get_width(global.surfaces.border),surface_get_height(global.surfaces.border));
var i;
for (i=0; i<array_length(buttons); i++) {
	draw_sprite(buttons[i].sprite, buttons[i].pressed+buttons[i].hovered, window_get_width()/2-46-i*41, 13);
}
//draw_sprite_ext(buttons[0].sprite, buttons[0].pressed+buttons[0].hovered, 10, 10, global.scale, global.scale, 0, c_white, 1);
//draw_sprite(s_mistake, 0, window_get_width()/2, 10);
surface_reset_target();
//draw_text(0,0,fps);
//application_surface_draw_enable(false);
if nam(global.count, 10) {
	//log("stars");
}