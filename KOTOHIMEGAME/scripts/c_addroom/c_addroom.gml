function c_addfakeroom(buit) {
	var shits = new cell(buit.type, buit.step, buit.difficulty, buit.weight, buit.pool, buit.create, buit.draw, buit.clear, buit.shopkeep, buit.name);
	shits.connections = [o_roommanager.rooms[o_roommanager.currentroom][o_roommanager.currentx]];
	shits.x = global.gw/2;
	shits.y = 400;
	shits.j = 1;
	shits.k = 0;
	array_push(o_roommanager.rooms[0], shits);
}
function c_addroom(y, x, roomtype=ROOMTYPE.TIME, regeneratepaths=true, roomgen=c_getstage().roomgen) { //all rooms are in y x okay dont worry about it the modders are gonna really like this
	var myroom = roomgen(roomtype);
	array_insert(o_roommanager.rooms[y], x, myroom);
	if regeneratepaths {
		with o_roommanager method(o_roommanager, c_getstage().pathgen)();
	}
	return myroom;
}
function c_removeroom(y, x, regeneratepaths=true) {
	array_delete(o_roommanager.rooms[y], x, myroom);
	if regeneratepaths {
		with o_roommanager method(o_roommanager, c_getstage().pathgen)();
	} else {
		log("you removed a room asshole its going to crash if you dont regenerate paths im doing it anyway");
		with o_roommanager method(o_roommanager, c_getstage().pathgen)();
	}
	return myroom;
}