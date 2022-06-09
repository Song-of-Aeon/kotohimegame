function st_textnvl() {
	surface_set_target(global.surfaces.HUD);
	draw_sprite(bg, 0, 0, 0);
	for (i=array_length(talker)-1; i>=0; i--) {
		draw_sprite_ext(talker[i].sprite,
		talker[i].index,
		x+(talker[i].position-2)*width/5,
		spriteposy,
		ineg(talker[i].position > SPRITEPOS.CENTER),
		1, 0, make_color_hsv(0, 0, 255-(i>0)*100), talker[i].position <= SPRITEPOS.RIGHT);
	}
	if sprite_index == s_textbox || sprite_index == s_null {
		draw_set_color(c_black);
		draw_rectangle(x-width/2, y, x+width/2, y+height, false);
		draw_set_color(c_white);
		draw_rectangle(x-width/2, y, x+width/2, y+height, true);
	} else {
		draw_sprite(sprite_index, 0, x, y);
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
	backlogging = true;
	atsound = 0;
	atfunc = 0;
	j = 0;
	for (j=0; j<array_length(backlog); j++) {
		draw_set_halign(fa_right);
		draw_text(x-width/2-20, y+(fontsize)+(lb+nvlline)*(fontsize*2), backlog[j].name);
		draw_set_halign(fa_left);
		for (i=1; i<=string_length(backlog[j].text)+1; i++) {
			while string_char_at(backlog[j].text, i) = "|" {
		        c_txtspecial();
		    }
			effchars = drawchars+specialchars;
			var centerOffset = 0;
			if(draw_get_halign() == fa_center || draw_get_halign() == fa_right) {
				var linelist = string_split(backlog[j].text,"#");
				var msglen = string_length(linelist[lb])
				centeroffset = ((width/(fontsize+5))) - msglen;
				if(draw_get_halign() == fa_center) {
					centeroffset/=2;
				}
			}
			var textoffsetx = cos((count+i*2)/(talkspeed*20))*wigglex+random(shake/2)-shake/4;
			var textoffsety = sin((count+i*2)/(talkspeed*20))*wiggley+random(shake/2)-shake/4;
			var textxpos = x+margin+(xpos+centerOffset)*(fontsize)-width/2;
			var textypos = y+(fontsize)+(lb+nvlline)*(fontsize*2);
			var thechar = string_hash_to_newline(string_char_at(backlog[j].text, i));
		    draw_text_ext_transformed_colour(textxpos+textoffsetx, textypos+textoffsety, thechar, 0, 999, sizemult, sizemult, 0, clr, clr, clr, clr, 1);
		    if string_char_at(backlog[j].text, i) = "#" {
		        lb++;
		        xpos = -1;
		    }
		    xpos += sizemult;
		}
		lb++;
		clr = c_white;
		var clrdur = 0;
		var xpos = 0;
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
	}
	backlogging = false;
	draw_set_halign(fa_right);
	draw_text(x-width/2-20, y+(fontsize)+(lb+nvlline)*(fontsize*2), talker[0].name);
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
		var textxpos = x+margin+(xpos+centerOffset)*(fontsize)-width/2;
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