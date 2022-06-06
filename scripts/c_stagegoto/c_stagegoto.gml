function c_stagegoto(day=global.currentday, stage=++global.currentstage, animation=false) { //MAKE IT TRUE
	//c_pause();
	global.currentstage = real(stage);
	global.currentday = real(day);
	if animation {
		room_set_persistent(BASEMENT, true);
		with instance_create(0, 0, o_doors) {
			target = WORLDMAP;
			goingevent = function() {
				c_generatestage();
				//c_gameresume();
				room_set_persistent(BASEMENT, false);
			}
		}
	} else {
		c_gameresume();
		c_generatestage();
		//o_roommanager.state = st_roomclear
		c_getroom().cleared = true;
	}
}