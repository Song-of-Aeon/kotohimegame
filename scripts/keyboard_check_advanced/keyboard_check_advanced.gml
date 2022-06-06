function keyboard_check_advanced() {
	if keyboard_check(vk_anykey) {
		if keyboard_key = holding {
			count++;
			if count >= 30 {
				keyboard_check_advanced = keyboard_check;
			}
		} else {
			keyboard_check_advanced = keyboard_check_pressed;
			count = 0;
		}
		holding = keyboard_key;
		show_debug_message(currentpos);
	} else {
		keyboard_check_advanced = keyboard_check_pressed;
		count = 0;
	}
}