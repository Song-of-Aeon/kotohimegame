nu shootman("fairy", s_fairy);
nu shootman("redfairy", s_redfairy);
nu shootman("magicfairy", s_bigfairy, function() {
	draw_sprite(s_bigcircle, 0, x, y+sin(global.count/30)*3);
	draw_self();
});
nu shootman("spinfairy", s_fairy, function(){image_angle += 2 draw_self()});