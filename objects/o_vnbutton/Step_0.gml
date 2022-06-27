//log(mouse_x);
//log(mouse_y);
if mouse_y > 300 && mouse_x < -90 {
	pos.y = lerp(pos.y, 640, .1);
	if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter) {
		log("SAVED");
		c_flash(global.surfaces.HUD, 120, c_white);
	}
} else {
	pos.y = lerp(pos.y, 700, .1);
}

if mouse_y < 40 && mouse_x < -90 {
	leave.y = lerp(leave.y, 80, .1);
	if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter) {
		log("EXITED");
		c_flash(global.surfaces.HUD, 120, c_white);
		room_goto(TITLE);
	}
} else {
	leave.y = lerp(leave.y, 20, .1);
}
