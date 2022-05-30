/// @description Insert description here
// You can write your code in this editor
if(patterns[currentpattern].type = SPELL.CARD){
	spellAlpha = lerp(spellAlpha,1,0.1);
}
else{
	spellAlpha = lerp(spellAlpha,0,0.1);
}
scount ++;

try{
	surface_set_target(global.surfaces.bg);
	if(spellAlpha < 0.9 && spellAlpha > 0.1 && patterns[currentpattern].type = SPELL.CARD){
		draw_clear(c_white);
	}
	//draw_clear_alpha(c_black,0);
	draw_set_alpha(spellAlpha);
	/*if(!global.stagetwod){
	
	}
	else{
		draw_sprite_tiled(s_spellbg2,0,scount,scount);
	}*/ //do it somehow else
	//draw_sprite_tiled(s_spellbg, 0, scount, scount);
	//patterns[currentpattern].bg, 0, scount, scount);
	patterns[currentpattern].draw();
	draw_set_alpha(1);
	surface_reset_target();
}
catch(e){
	log("boss predraw error !")
}