///@function c_input();
global.replay = [];
global.replaying = false;
function c_input(){
	//esc trancends all 
	if(!global.replaying){
		c_input_real();	
	}
	else{
		c_input_fake();
	}
}
function c_input_fake(){
	if(array_length(global.replay) > global.count){
		log("replaying");
		var med = global.replay[global.count];
		var vars = variable_struct_get_names(med);
		for(var i = 0; i < array_length(vars);i++){
			if(vars[i] != "toString"){
				if(is_struct(self))
				self[$vars[i]] = med[$vars[i]];
				else
				variable_instance_set(self,vars[i],med[$vars[i]]);
			}
		}
	}
}
function c_input_real() {
	var med = {}
	with(med){
		right = keyboard_check(vk_right); //directional, default is held
		left = keyboard_check(vk_left);
		up = keyboard_check(vk_up);
		down = keyboard_check(vk_down);

		rightp = keyboard_check_pressed(vk_right); //directional other
		leftp = keyboard_check_pressed(vk_left);
		upp = keyboard_check_pressed(vk_up);
		downp = keyboard_check_pressed(vk_down);
		rightr = keyboard_check_released(vk_right);
		leftr = keyboard_check_released(vk_left);
		upr = keyboard_check_released(vk_up);
		downr = keyboard_check_released(vk_down);

		shoot = keyboard_check_pressed(ord("Z"));
		bomb = keyboard_check_pressed(ord("X"));
		special = + keyboard_check_pressed(ord("C"));

		shooth = keyboard_check(ord("Z"));
		bombh = keyboard_check(ord("X"));
		specialh =  keyboard_check(ord("C"));
		shootr =  keyboard_check_released(ord("Z"));
		bombr =  keyboard_check_released(ord("X"));
		specialr =  keyboard_check_released(ord("C"));

		shift = keyboard_check(vk_shift); //less important buttons, default is whatever
		shiftp = keyboard_check_pressed(vk_shift);
		shiftr = keyboard_check_released(vk_shift);

		esc = keyboard_check_pressed(vk_escape) | mouse_check_button_pressed(mb_right);
		esch = keyboard_check(vk_escape);
		enter = keyboard_check_pressed(vk_enter) | mouse_check_button_pressed(mb_left); //misc useful buttons, all as pressed
		enterh = keyboard_check(vk_enter);
		ctrl = keyboard_check_pressed(vk_control);
		ctrlh = keyboard_check(vk_control);
		select = enter+shoot;
		selecth = enterh+shooth;
		back = bomb+esc;
		backh = bombh+esch;
		map = keyboard_check_pressed(vk_tab) | keyboard_check_pressed(vk_space);
		maph = keyboard_check(vk_tab);
	}
	
	var vars = variable_struct_get_names(med);
	for(var i = 0; i < array_length(vars);i++){
		var v = vars[i];
		if(v != "toString"){
			if(is_struct(self)){
				self[$v] = med[$v];
			}
			else
			variable_instance_set(self,v,med[$v]);
		}
	}
	array_resize(global.replay,global.count+1)
	global.replay[global.count] = med;
}

keyboard_set_map(ord("S"), ord("Z"), );
keyboard_set_map(ord("A"), ord("X"), );
keyboard_set_map(ord("D"), ord("C"), );