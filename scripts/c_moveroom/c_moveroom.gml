function c_moveroom(room) {
	with o_roommanager {
		currentx = room.j;
		currentroom = room.k;
		room.traveled = true;
		mappos.y = room.k-1;
		drawstate = NUMBER5;
		mappos.x = 0;
		room.seed = o_roommanager.roomRNG;
		//count = 0;
		if room.cleared {
			state = st_roomclear;
			drawstate = st_drawclear;
			ISAAC.state = st_standard;
			o_roommanager.roomRNG = room.seed;
		} else {
			o_roommanager.update_room_rng();
			//log("IM SIEUFHDSILUFHSIDHUFISUDHFISUJFDHIDUHF");
			//log(room);
			/*log(room.create);
			log(room.create());*/
			room.create();
			state = st_roomactive;
			ISAAC.state = st_standard;
			//log(room.type);
			switch(room.type){
				case 0: //normal
					break;
				case ROOMTYPE.SHOP:
				//log("i am shop");
					break;
				case 2:
					break;
			}
		}
	}
}