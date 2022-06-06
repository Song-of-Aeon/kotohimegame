function c_getstage() {
	if global.doingtutorial {
		return global.stages[DAY.SUN][0];
	} else {
		return global.stages[global.currentday][global.currentstage];
	}
}

function c_getroom() {
	return o_roommanager.rooms[o_roommanager.currentroom][o_roommanager.currentx];
}