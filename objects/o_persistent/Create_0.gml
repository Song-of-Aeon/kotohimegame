//depth
global.timescale = 1;
global.ticks = 1;
tickCount = 0;

if(instance_number(o_persistent)>1){
	instance_destroy();
	return;
}
audio_master_gain(global.volume/100);
instance_create(20,320,o_theStarsConstant);

global.character = "reimu";
global.count = 0;
global.title = "";
global.description = "";
global.tooltip = "";
global.lang = LANGUAGE.ENGLISH;
global.nether = false;

STATS.stats = array_length(variable_struct_get_names(STATS));
STATS.randomnumber = irandom(999999);

buttons = [{
	effect: munction(function() {
		game_end();
	}),
	sprite: s_xbutton,
	pressed: false,
	hovered: false,
},{
	effect: method(o_persistent, function() {
		window_set_position(display_mouse_get_x()-window_get_width()+46*global.scale+i*41*global.scale, display_mouse_get_y()-13*global.scale);
		if mouse_check_button_released(mb_left) {
			buttons[i].pressed = false;
		}
	}),
	sprite: s_movebutton,
	pressed: false,
	hovered: false,
},];

#macro yes true
