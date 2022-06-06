function st_title() {
	c_input();
	if select {
		audio_play_sound(snd_mnuselect,0,false);
		switch(option){
				case 0:
					alarm[0] = 2;
					break;
				case 1:
					room_goto(SETTINGS);
					break;
				case 2:
					game_end(0);
					break;
		}
	}

	if(downp or upp){
		audio_play_sound(snd_mvmnu1,0,false);
	}

	option+=downp;
	option-=upp;
	option = option % 3;
	if(option < 0){
		option+=3;
	}
	count++;
	draw_sprite(s_title, 2, 0, 0);
	draw_sprite(s_title, 3, 0, 0);
	draw_sprite(s_title, 1, -(count*4%640)-640, 0);
	draw_sprite(s_title, 1, -(count*4%640), 0);
	draw_sprite(s_title, 1, -(count*4%640)+640, 0);
	//draw_sprite(s_title, 4, 0, 0);
	draw_sprite(s_title, 0, 0, 0);
	
	set_font_style(FONT.TITLE);
	var xpos = 50;
	var ypos = 200;
	
	if option = 0 { //its balls i know ill put it in a for loop later
		draw_text_outline(xpos-4, ypos-4, 300, 50, sin(count/50), 0, sin((count)/50), 1, 1, function() {
			draw_text(4, 4, "Let's spend some cash!");
		});
	} else {
		draw_text_outline(xpos-4, ypos-4, 300, 50, 0, 0, 0, 1, 1, function() {
			draw_text(4, 4, "Let's spend some cash!");
		});
	}
	
	if option = 1 {
		draw_text_outline(xpos+20-4, ypos+50-4, 300, 50, sin(count/50), 0, sin((count+50)/50), 1, 1, function() {
			draw_text(4, 4, "Did I leave my wallet in the car?");
		});
	} else {
		draw_text_outline(xpos+20-4, ypos+50-4, 300, 50, 0, 0, 0, 1, 1, function() {
			draw_text(4, 4, "Did I leave my wallet in the car?");
		});
	}
	
	if option = 2 {
		draw_text_outline(xpos+40-4, ypos+100-4, 300, 50,sin(count/50), 0, sin((count+50)/50), 1, 1, function() {
			draw_text(4, 4, "I'm just window shopping...");
		});
	} else {
		draw_text_outline(xpos+40-4, ypos+100-4, 300, 50, 0, 0, 0, 1, 1, function() {
			draw_text(4, 4, "I'm just window shopping...");
		});
	}
	draw_outline(s_hart, 0, 0, 0, 0, 1, 1, function() {
		draw_sprite_ext(s_hart, 0, 50-20+option*20, 200+(option*50)+3, 1, 1, 0, c_white, 1);
	});
	
	set_font_style(FONT.UI);
	draw_set_color(c_white)
	draw_set_alpha(-count/20);
	draw_rectangle(0, 0, 999, 999, false);
	draw_set_alpha(1);
}

function st_titleintro() {
	count++;
	c_input();
	draw_sprite(s_titleintro, count/6, 0, 0);
	if count >= 114 || select {
		//flash(surface, duration, colour);
		//making this eventually but cant shading
		state = st_title;
		count = -20;
		//window_set_caption("market");
	}
}

function makeTitleScreenOption(x,y,text){
		
}