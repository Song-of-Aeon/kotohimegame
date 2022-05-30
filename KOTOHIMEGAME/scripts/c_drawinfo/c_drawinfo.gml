function c_drawui() {
	
	surface_set_target(global.surfaces.HUD);
	//if we are paused, activate isaac, get his stats, then redeactivate him. if for some unknown reason isaac doesnt exist but this is being called anyways, safely bail.
	var deactivatin = false;
	draw_sprite(s_moonhp, 0, 518, 99);
	if(!instance_exists(ISAAC)){
		deactivatin = true;
		instance_activate_object(ISAAC);
		if(!instance_exists(ISAAC)){
			surface_reset_target();
			return;
		}
	}
	draw_sprite(s_moonhp, ISAAC.hp-1, 518, 99);
	
	var i;
	for (i=0; i<ISAAC.life; i++) {
		draw_sprite(s_minimoon, 0, 577, 130-i*20);
	}
	/*draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_text_ext(555, 265, global.title, 14, 136);
	draw_set_valign(fa_top);
	//draw_text_ext(555, 290, global.description, 10, 136);
	draw_set_halign(fa_left);*/
	c_dohook(ISAAC.hooks.onhuddraw);
	surface_reset_target();
	
	
	//gpu_set_blendenable(false);
	var surfac = surface_get_target()
	surface_reset_target()
	gpu_set_blendmode(bm_add);
	draw_set_color(c_orange);
	
	draw_set_alpha(ISAAC.pocced);
	draw_line_width(0-50, ISAAC.pocpoint, global.gw+50, ISAAC.pocpoint, clamp(-(ISAAC.y-(140+ISAAC.pocpoint))/30, 0, 5));
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
	surface_set_target(surfac);
	if(deactivatin)
	instance_deactivate_object(ISAAC);
	
}

function surfaceFuckery(maxstat, stat, sprite,_x,_y, scale) {
	if(stat == 0) return;
	var maxlifesurf = surface_create(16*maxstat/scale,16);
	var lifesurf = surface_create(16*stat/scale,16);
	
	surface_set_target(lifesurf);
	draw_clear(0);
	draw_sprite_tiled(sprite,0,0,0);
	surface_reset_target();
	
	surface_set_target(maxlifesurf);
	draw_clear(0);
	draw_set_alpha(0.5);
	draw_sprite_tiled(sprite,0,0,0);
	draw_set_alpha(1);
	surface_reset_target();
	
	surface_set_target(global.surfaces.HUD);
	draw_surface(maxlifesurf,_x,_y);
	draw_surface(lifesurf,_x,_y);
	surface_free(lifesurf);
	surface_free(maxlifesurf);
	surface_reset_target();
}

function surfaceFuckery2(maxstat, stat, sprite,_x,_y, scale){
	draw_set_alpha(0.5);
	for(var i = 0; i < maxstat/scale; i++){
		draw_sprite(sprite,0,_x+(16*i),_y);
	}
	draw_set_alpha(1);
	if(stat == 0) return;
	for(var i = 0; i < floor(stat/scale); i++){
		draw_sprite(sprite,0,_x+(16*i),_y);
	}
	draw_sprite_part(sprite,0,0,0,16*(frac(stat/scale)),16,_x+(16*floor(stat/scale)),_y);
}



