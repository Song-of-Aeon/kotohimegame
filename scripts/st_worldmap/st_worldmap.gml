function st_worldmap() {
	worldrot = sin(count/100)*1080;
	//state = st_map;
	//drawstate = st_mapdraw;
	if count < 180 {
		cpp();
	} else {
		countwo++;
	}
	if countwo = 120 {
		countwo = 0;
		count = 0;
		state = st_map;
		c_loadmaplines();
		drawstate = st_mapdraw;
	}
}

function st_worldmapdraw() {
	surface_set_target(global.surfaces.HUD);
	var alph = -(countwo-120)/60
	draw_sprite_ext(s_worldmap, 0, 320, 360, 1, 1, worldrot+25, c_white, alph);
	draw_sprite_ext(s_worldmap, 1, 320, 360, 1, 1, worldrot+25, c_white, alph);
	draw_sprite_ext(s_worldmap, 2, 320, 360, 1, 1, worldrot+120+25, c_white, alph);
	draw_sprite_ext(s_worldmap, 3, 320, 360, 1, 1, worldrot+240+25, c_white, alph);
	draw_sprite_ext(s_worldmap, 4, 320, 360, 1, 1, 0, c_white, 1);
	surface_reset_target();
}