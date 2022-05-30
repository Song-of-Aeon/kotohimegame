function c_generatestage(stage=c_getstage()) {
	with o_roommanager {
		log("generating stage " + string(global.currentstage+1))
		roomgen = stage.roomgen//global.playingstage.roomgen;
		rooms = [new cell()];
		stage.generation();
		//c_generatestagegeneric(7, 5, 5);
		
		method(o_roommanager, stage.pathgen)()//global.playingstage.pathgen();
		o_3dmanager.backgrounddraw = stage.bgdraw;
		log("IM GENERATED STAGE WHATEVER");
		currentroom = 0;
		currentx = 0;
		mappos.x = 0;
		mappos.y = 1;
		rooms[currentroom][currentx].create();
	}
}