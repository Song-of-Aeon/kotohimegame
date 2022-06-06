function c_drawmap() {
	var i;
	var j;
	for (i=0; i<array_length(rooms); i++) {
		for (j=0; j<array_length(rooms[i]); j++) {
			if rooms[i][j].type != ROOMTYPE.BLACK {
				if rooms[i][j].cleared {
					draw_sprite_ext(s_mapicon, rooms[i][j].type, rooms[i][j].x, rooms[i][j].y, 1, 1, 0, c_white, .4);
				} else {
					draw_sprite_ext(s_mapicon, rooms[i][j].type, rooms[i][j].x, rooms[i][j].y, 1, 1, 0, c_white, 1);
				}
			} else {
				
				//&& mappos.y = i
				
			}
		}
	}
}