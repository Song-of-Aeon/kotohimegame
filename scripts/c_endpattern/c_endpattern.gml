function c_endpattern(delay=0) {
	if delay {
		o_roommanager.delay = delay;
	} else {
		with o_roommanager {
			o_roommanager.delay = 0;
			//log("no more fortnite????");
			timeout = 0;
			go = false;
			c_clearradius(155, 180, 500, true);
			c_clearenemies();
			c_cleartheroom(true);
			//c_spawnitem(150, 155, rooms[currentroom][mappos.x].pool, 0);
			
		}
	}
}