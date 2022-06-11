function st_textfacepic() {
	surface_set_target(global.surfaces.HUD);
	draw_sprite(bg, 0, 0, 0);
	if sprite_index == s_textbox || sprite_index == s_null {
		draw_set_color(c_black);
		draw_rectangle(x-width/2, y, x+width/2, y+height, false);
		draw_set_color(c_white);
		draw_rectangle(x-width/2, y, x+width/2, y+height, true);
	} else {
		draw_sprite(sprite_index, 0, x, y);
	}
	var doproblems = false;
	if talker[0].name != "" {
		draw_sprite_ext(talker[0].sprite,
		talker[0].index,
		x+(SPRITEPOS.MIDLEFT-2)*width/5,
		y+height/2,
		1, 1, 0, global.thecolor, 1);
		doproblems = true;
	}
	set_font_style(FONT.TALK);
	clr = c_white;
	var xpos = 0;
	var lb = 0;
	sizemult = 1;
	var effchars = drawchars;
	specialchars = 0;
	wigglex = 0;
	wiggley = 0;
	shake = 0;
	sizepos = 0;
	pressing = 0;
	fontsize = font_get_size(draw_get_font())-1;
	atsound = 0;
	atfunc = 0;
	j = 0;
	draw_set_halign(fa_center);
	draw_text(x+width/20-width/2+17, y-18, talker[0].name);
	draw_set_halign(fa_left);
	atsound = 0;
	atfunc = 0;
	for (i=1; i<=effchars; i++) {
		while string_char_at(msg[talkpos].text, i) = "|" {
	        c_txtspecial();
	    }
		effchars = drawchars+specialchars;
		var centerOffset = 0;
		if(draw_get_halign() == fa_center || draw_get_halign() == fa_right) {
			var linelist = string_split(msg[talkpos].text,"#");
			var msglen = string_length(linelist[lb])
			centeroffset = ((width/(fontsize+5))) - msglen;
			if(draw_get_halign() == fa_center) {
				centeroffset/=2;
			}
		}
		var textoffsetx = cos((count+i*2)/(talkspeed*20))*wigglex+random(shake/2)-shake/4;
		var textoffsety = sin((count+i*2)/(talkspeed*20))*wiggley+random(shake/2)-shake/4;
		var textxpos = x+margin+(xpos+centerOffset)*(fontsize)-width/2+doproblems*100; //super arbitrary
		var textypos = y+(fontsize)+(lb+nvlline)*(fontsize*2);
		var thechar = string_hash_to_newline(string_char_at(msg[talkpos].text, i));
	    draw_text_ext_transformed_colour(textxpos+textoffsetx, textypos+textoffsety, thechar, 0, 999, sizemult, sizemult, 0, clr, clr, clr, clr, 1);
	    if string_char_at(msg[talkpos].text, i) = "#" {
	        lb++;
	        xpos = -1;
	    }
	    xpos += sizemult;
	}
	surface_reset_target();
}