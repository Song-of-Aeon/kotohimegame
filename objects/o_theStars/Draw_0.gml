/// @description Insert description here
// You can write your code in this editor

if(!surface_exists(starSurface)){
	starSurface = surface_create(surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
}
surface_set_target(starSurface);
draw_clear_alpha(c_black,0);

/*gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
shader_set(z_premultiply);
draw_set_alpha(0.01);
//shader_set(z_stars)
//uDestination = shader_get_sampler_index(z_stars,"Destination");
//texture_set_stage(uDestination,surface_get_texture(starSurface));
//gpu_set_blendmode(bm_one);
//gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
//gpu_set_blendmode_ext_sepalpha()
//gpu_set_blendmode(bm_subtract)
//draw_set_color($020202);
//draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(0,0,1000,1000,false);
shader_reset();

gpu_set_blendmode(bm_subtract)
draw_rectangle(0,0,1000,1000,false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);*/
foreach(stars,function(star){
			star.draw();
		});
surface_reset_target();
surface_set_target(global.surfaces.HUD);
draw_sprite_stretched(s_menuui,0,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));

//gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha)
//gpu_set_blendmode_ext_sepalpha(bm_src_color,bm_dest_color,bm_src_color,bm_dest_alpha)
//gpu_set_blendmode(bm_add);
draw_surface(starSurface,0,0);
//gpu_set_blendenable(bm_normal);
//gpu_set_blendmode(bm_normal);
//surface_reset_target()
//surface_set_target(global.surfaces.HUD);
//draw_sprite_stretched(s_menuui,0,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
draw_sprite_stretched(s_menuui,1,0,0,surface_get_width(global.surfaces.HUD),surface_get_height(global.surfaces.HUD));
surface_reset_target();
