function st_dataselect() {
	c_input();
	//log(-2%5);
	//log(-1%5);
	difpos = mod_negative(difpos+downp-upp, 4);
	/*lerpdif.x = lerp(lerpdif.x, 280-difpos*260, .1);
	lerpdif.y = lerp(lerpdif.y, 180+difpos*70, .1);
	lerproute.x = lerp(lerproute.x, 290-routepos*50, .1);
	lerproute.y = lerp(lerproute.y, 200-routepos*200+20, .1);*/
	//lerper = lerp(lerper, difpos, .1);
	if back {
		state = st_charselect;
		drawstate = c_null;
		seedstring = "";
		exit;
	}
	if keyboard_string = string_digits(keyboard_string) && string_length(seedstring) < 8 {
		seedstring += keyboard_string;
	}
	if keyboard_check_pressed(vk_backspace) && string_length(seedstring) {
		seedstring = string_delete(seedstring, string_length(seedstring), 1);
	}
	io_clear();
	if select {
		/*switch pos {//im sorry cant get key by value :[
			case 0:
				global.character = "reimu";
				break;
			case 1:
				global.character = "undertale";
				break;
		}*/
		if (!difpos || difpos = 2) {
			global.difficulty = difpos+2;
			global.currentstage = 0;
			state = st_dayselect;
			drawstate = st_daydraw;
			//disable = true;
			if seedstring != "" {
				global.seed = {value: real(seedstring)};
			} else {
				global.seed = {value: irandom(99999999)};
			}
		}
		
	}
	
}

function st_datadraw() {
	var i;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	for (i=0; i<array_length(difficulties); i++) {
		draw_text_transformed_color(640/2, 250+i*30, difficulties[((i+difpos)%4)], (((i+difpos)%4)==difpos)*.4+1, (((i+difpos)%4)==difpos)*.4+1, 0, c_white, c_white, (((i+difpos)%4)==difpos) ? difcolors[(i+difpos)%4] : c_white, (((i+difpos)%4)==difpos) ? difcolors[(i+difpos)%4] : c_white, 1);
	}
}

