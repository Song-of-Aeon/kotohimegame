function c_pause(notsetupReferences) {
	//var perst = o_persistent.id;
	
	instance_deactivate_all(false);
	instance_activate_object(o_persistent);
	instance_create(0,0,o_pause);
}

function c_gameresume() {
	instance_activate_all();
	instance_destroy(o_pause);
	regenerateItemUI()
	global.MenuCursor.disabled = true;
	global.MenuCursor.target = noone;
}


global.unpausables = [ISAAC, o_roommanager, ]
global.death= false;