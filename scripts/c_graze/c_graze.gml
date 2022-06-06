function c_graze() {
	grazedbullets = ds_list_create();
	grazedlazers = ds_list_create();
	var grlist = collision_circle_list(x, y, radius*8, o_bullet, false, false, grazedbullets, true);
	grlist += collision_circle_list(x, y, radius*8, o_laser, false, false, grazedbullets, true);
	for (i=0; i<grlist; i++) {
		tak = grazedbullets[|i];
		if tak != noone && tak.friendly = false && !tak.grazed {
			if tak.object_index = o_bullet || tak.object_index = o_chain {
				//log("grazed" + string(irandom(10)));
				tak.grazed++;
				if c_dohook(hooks.ongraze, tak) exit;
			} else if ncm(5) {
				//log("grazed" + string(irandom(10)));
				if c_dohook(hooks.ongraze, tak) exit;
			}
		}
	}
	ds_list_destroy(grazedbullets);
	ds_list_destroy(grazedlazers);
}

//DISTANCE_TO_POINT