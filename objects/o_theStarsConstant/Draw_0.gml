if(!global.surfaces.fancy) return;
surface_set_target(global.surfaces.border);
shader_set(z_stars);
starsurface = shader_get_sampler_index(z_stars, "surface")
spr = sprite_get_texture(tex_based,0);
texture_set_stage(starsurface,spr);
foreach(stars,function(star){
			star.draw();
		});
shader_reset();
surface_reset_target();

