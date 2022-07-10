draw();


/*
if patterns[currentpattern].type == SPELL.CARD {
	
	/*draw_set_halign(fa_right);
	draw_text(290, 20+fxcount, patterns[currentpattern].name);
	fxcount = lerp(fxcount, 0, .5);*/
	/*draw_set_color(c_cyan);
	if armor && hp <= maxhp/5 && !(irandom(3)) draw_set_color(c_yellow);
	draw_circle_curve(x, y, 52, 20, 90, (hp/maxhp)*180, 3, true);
} else {
	draw_set_color(c_red);
	draw_circle_curve(x, y, 52, 20, 270, (hp/maxhp)*180, 3, true);
	draw_set_color(c_cyan);
	draw_circle_curve(x, y, 52, 20, 90, 180, 3, true);
}
//draw_sprite(s_bosshp, 0, x, y);
//draw_sprite_part(s_bosshpbar, 1, 0, 0, 48*(hp/maxhp), 16, x-24, y+60-8);

set_font_style(FONT.UI);

draw_set_color(c_white);
draw_set_halign(fa_right);
//set_font_style("formalh3");*/
draw_set_halign(fa_center);
draw_set_font(ft_couriernew8);
/*draw_text_outline(x-3-15, y-48, 100, 100, 0, 0, 0, 1, 2, function() {
	draw_text(global.gw, 7, string_format(time/60, 5, 2));
	
	//string_copy(string(time/60), 0, 5)
});*/
if global.luying && global.spelltiming {
	draw_text(x, y-55, string_copy(string(time/60), 0, 5));
}
draw_set_halign(fa_left);
//set_font_style(FONT.UI);


//draw_sprite_part(s_bosshpbar, 1, 0, 0, 48*(time/2000), 16, x-24, y-60-8);

//draw_circle(x, y, hitboxradius, false);