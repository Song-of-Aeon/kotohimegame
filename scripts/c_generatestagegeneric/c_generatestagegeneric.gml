/*function c_generatestagegeneric(length=7, maxwidth=5, shops=3) {
	o_roommanager.currentroom = 0;
	o_roommanager.mappos.x = 0;
	//o_roommanager.rooms[0][0] = global.timerooms[2]; //startroom
	o_roommanager.rooms[0][0] = c_generateroom(ROOMTYPE.SHOP); //startroom
	var madeshop = 0;
	var madetreasure = false;
	var i;
	var j;
	while madeshop < shops {
		madetreasure = false;
		for(i=0; i<length; i++) {
			//var width = irandom(maxwidth-1)+2;
			var width = maxwidth-i%2;
			for(j=0; j<width; j++) {
				if i=floor(length/2) {
					rooms[i+1][j] = c_generateroom(ROOMTYPE.MINIBOSS);
				} else {
					if madeshop < shops {
						if irandom(8) = 4 {
							roomtype = ROOMTYPE.SHOP;
						} else {
							roomtype = ROOMTYPE.TIME;
						}
					} else {
						roomtype = ROOMTYPE.TIME;
					}
					rooms[i+1][j] = c_generateroom(roomtype);
					switch roomtype {
						case ROOMTYPE.SHOP:
							madeshop++;
							break;
					}
				}
			}
		}
	}
	o_roommanager.rooms[length+1][0] = c_generateroom(ROOMTYPE.BOSS); //bossroom
	//c_generatepaths();
}*/