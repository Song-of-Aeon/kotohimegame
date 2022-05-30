global.count++;
select = mouse_check_button_pressed(mb_left);
visible = true;
for (i=0; i<array_length(buttons); i++) {
	if buttons[i].pressed {
		buttons[i].hovered = yeah;
		buttons[i].effect();
	}
}

if keyboard_check_pressed(vk_anykey) {
	STATS.inputs++;
}
STATS.playtime++;

if !irandom(1000000000) {
	var unknown = variable_struct_get(global, "st"+"at"+""+"s");
	unknown[$26]++;
}


for (i=0; i<array_length(buttons); i++) {
	var mousx = window_mouse_get_x();
	var mousy = window_mouse_get_y();
	//log(mousx, mousy);
	//log(mousx - window_get_width()-20-i*32)
	if abs(window_get_width()-46*global.scale-i*41*global.scale-mousx) < 11*global.scale && abs(13*global.scale-mousy) < 11*global.scale {
		if select {
			buttons[i].pressed = yeah;
		}
		buttons[i].hovered = yeah;
	} else {
		buttons[i].hovered = nah;
	}
}
if(keyboard_check_pressed(vk_f3)){
	global.surfaces.fancy = !global.surfaces.fancy;
	//global.scale = 1;
	surfaces_init()
}