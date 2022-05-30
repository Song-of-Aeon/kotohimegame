/// @description Insert description here
// You can write your code in this editor
try{
	var surfaces = [application_surface,global.surfaces.screen2,global.surfaces.HUD,global.surfaces.bg,global.surfaces.map,global.surfaces.border]
	var partlen = array_length(surfaces)
	for(var j = 0; j < partlen;j++){
		if(surfaces[j] >= array_length(particles)) continue;
		var partlen2 = array_length(particles[surfaces[j]])
		if(partlen2 > 0){
			if(surfaces[j] != application_surface && surface_exists(surfaces[j])) surface_set_target(surfaces[j])
			for(var i = 0; i < partlen2;i++){
				if(particles[surfaces[j]][i].dead == false){
					if(particles[surfaces[j]][i].blendmode != gpu_get_blendmode()) gpu_set_blendmode(particles[surfaces[j]][i].blendmode); 
					try{
						particles[surfaces[j]][i].draw();
						particles[surfaces[j]][i].update();
					}
					catch(e){
						log(e);
					}
				}
			}
			if(surfaces[j] != application_surface && surface_exists(surfaces[j]))surface_reset_target();
		}
	}
	//with(all) visible = false;
}
catch(e){
	log(e);
}

if(deadparticles >= 100){
		particle_gccollect()
	}

	gpu_set_blendmode(bm_normal);
	if(surface_get_target() != application_surface){
		surface_reset_target();
	}
	draw_set_alpha(1);