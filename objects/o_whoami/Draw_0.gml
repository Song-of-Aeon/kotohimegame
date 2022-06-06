//draw_sprite_tiled()
surface_set_target(global.surfaces.HUD);
//draw_sprite(s_menuui, 0, 0, 0);
//draw_sprite(s_charselectbg, 1, 0, 0);
//draw_text(xdraw, xdraw, guys[pos].name);
var i;
var j;
var xdraw = 50;
var ydraw = 140;
for (i=0; i<array_length(guys); i++) {
	draw_set_valign(fa_bottom);
	set_font_style(FONT.H2);
	draw_text_transformed(xdraw+i*640-lerper*640, ydraw, guys[i].name, 1, 1, 15);
	var diring = distabs(15, 150);
	draw_line(xdraw, 100, xdraw+diring.x, 100+diring.y);
	set_font_style(FONT.H3);
	draw_text_transformed(xdraw+i*640-lerper*640, ydraw+30, guys[i].desc, 1, 1, 15);
	for (j=0; j<array_length(guys[i].data); j++) {
		diring = distabs(15, 100);
		if global.doingtutorial {
			draw_text_transformed(xdraw+i*640-lerper*640, ydraw+100+j*40, tutorialdata[i][j], 1, 1, 15);
		} else {
			draw_text_transformed(xdraw+i*640-lerper*640, ydraw+100+j*40, guys[i].data[j], 1, 1, 15);
		}
		if j<array_length(guys[i].data)-1 {
			draw_line(xdraw+i*640-lerper*640, ydraw+110+j*40, xdraw+i*640-lerper*640+diring.x, ydraw+110+j*40+diring.y);
		}
	}
	//gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(guys[i].menusprite, 0, 460+i*640-lerper*640, ydraw+80, -1, 1, 0, c_white, 1);
	//gpu_set_blendmode(bm_normal);
	//draw_text(xdraw+i*640-lerper*640, xdraw, i);
	draw_set_valign(fa_top);
}
drawstate();
surface_reset_target();