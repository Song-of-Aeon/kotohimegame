if(freecam.enabled)
	if(mouse_check_button_pressed(mb_right)){
			window_mouse_set(window_get_width()/2,window_get_height()/2);
	}
	else if(mouse_check_button(mb_right)){
		mousex += window_mouse_get_x()-(window_get_width()/2);	
		mousey += window_mouse_get_y()-(window_get_height()/2);
		window_mouse_set(window_get_width()/2,window_get_height()/2);
	}
	if(keyboard_check(ord("U"))){
		global.cameraz ++;
	}
	if(keyboard_check(ord("J"))){
		global.cameraz--;	
	}

//mousex += 1;

global.camerax+=1;

if(freecam.enabled){
	
}



