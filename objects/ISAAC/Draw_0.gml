//surface_set_target(global.surfaces.game);
//surface_reset_target();
//gpu_set_texfilter(true);
//draw_sprite_stretched(sprite_index, image_index, x-sprite_width/14, y-sprite_height/14, sprite_width/7, sprite_height/7);
//if(dietime){
//	shader_set(z_enredden);
//}
//image_xscale = 1.3;
//image_yscale = 1.3;
if(!dietime){
	draw_set_alpha(image_alpha);
	//draw_sprite_at(sprite_index, image_index, x, y, 24, 24);
	draw_self();
	draw_set_alpha(1);
	shader_reset();
} else {
	//draw_sprite_at(sprite_index, image_index, x, y, 24, 24);
	draw_self();
	draw_set_color(c_red);
	//draw_circle_width(x, y, abs(cos(1/(dietime/(deathbombwindow/2))))*40, 4, true);
	//draw_circle_width(x, y, (dietime-deathbombwindow)*20, 4, true);
	draw_circle_width(x, y, ease_inoutsine(dietime, deathbombwindow)*30, 4, true);
}
//gpu_set_tex_filter(false);
//if(dietime){
//	shader_set(z_enwhiten);
//	draw_sprite_at(s_deathbombEffect,0, x-32,y-32,64,64);
//	shader_reset();
	
//}

if c_dohook(hooks.ondraw) exit;
if shift {
	//draw_ellipse(x-1-hitboxsize, y-hitboxsize, x+hitboxsize, y+hitboxsize, false);
	draw_sprite(shitbox, 0, x+1, y+1);
}
//matrix_set

//surface_set_target(application_surface);
//draw_sprite_stretched(fart,0,0,0,sprite_get_width(fart)/2,sprite_get_height(fart)/2);
//no more farts
//surface_reset_target()