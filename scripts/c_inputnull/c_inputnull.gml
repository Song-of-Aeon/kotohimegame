function c_inputnull(target=ISAAC) {
	with target {
		right = false//false;
		left = false//false;
		up = false//keyboard_check(vk_up);
		down = false//keyboard_check(vk_down);

		rightp = false//keyboard_check_pressed(vk_right); //directional other
		leftp = false//keyboard_check_pressed(vk_left);
		upp = false//keyboard_check_pressed(vk_up);
		downp = false//keyboard_check_pressed(vk_down);
		rightr = false//keyboard_check_released(vk_right);
		leftr = false//keyboard_check_released(vk_left);
		upr = false//keyboard_check_released(vk_up);
		downr = false//keyboard_check_released(vk_down);

		shoot = false//keyboard_check_pressed(ord("S")) + keyboard_check_pressed(ord("Z"));
		bomb = false//keyboard_check_pressed(ord("A")) + keyboard_check_pressed(ord("X"));
		special = false//keyboard_check_pressed(ord("D")) + keyboard_check_pressed(ord("C"));

		shooth = false//keyboard_check(ord("S")) + keyboard_check(ord("Z"));
		bombh = false//keyboard_check(ord("A")) + keyboard_check(ord("X"));
		specialh = false//keyboard_check(ord("D")) + keyboard_check(ord("C"));
		shootr = false//keyboard_check_released(ord("S")) + keyboard_check_released(ord("Z"));
		bombr = false//keyboard_check_released(ord("A")) + keyboard_check_released(ord("X"));
		specialr = false//keyboard_check_released(ord("D")) + keyboard_check_released(ord("C"));

		shift = false//keyboard_check(vk_shift); //less important buttons, default is whatever
		shiftp = false//keyboard_check_pressed(vk_shift);
		shiftr = false//keyboard_check_released(vk_shift);

		enter = false//keyboard_check_pressed(vk_enter); //misc useful buttons, all as pressed
		esc = false//keyboard_check_pressed(vk_escape);
		ctrl = false//keyboard_check_pressed(vk_control);
		ctrlh = false//keyboard_check(vk_control);
		select = false//enter+shoot;
		back = false//bomb+esc;
	}
}