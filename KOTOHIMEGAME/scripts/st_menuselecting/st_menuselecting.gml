//UNUSED
function st_menuselecting() {
	/*theinventory = makeNumberedItemsa(inventory);
	//menu navigation
	if(-hput && pos.x){pos.y+=4; }
	else if(hput && pos.x && pos.y >=4){pos.y-=4; }
	else if(-hput && !pos.x && pos.y >=4){pos.y-=4; }
	else if(hput&&!pos.x){pos.y+=4; }
	else{
		pos.x += -hput;
		pos.y += vput;
		pos.x = clamp(pos.x, 0, 1);
	}
	if !pos.x {
		pos.y = clamp(pos.y, 0, array_length(theinventory)-1);
		if select {
			if global.credit >= c_getitembyid(theinventory[pos.y].item).quality {
				c_buyitem(pos.y);
			}
		}
	} else {
		var sizey = ds_list_size(makeNumberedItems(ISAAC.myitems))-1
		pos.y = clamp(pos.y, 0, sizey+1);
		if sizey
		if select {
			c_sellitem(pos.y);
		}
	}
	if back {
		instance_destroy();
	}
	if(pos.y == -1){
		//pos.x = -pos.x
		pos.x = -pos.x;
		pos.y = 0;
	}*/
	var theinventory = c_getInventory(false);
	var mysizey = ds_list_size(c_getInventory(false))-1;
	var yousizey = array_length(inventory)-1;
	var i;
	for (i=0; i<array_length(ISAAC.myactive); i++) {
		if ISAAC.myactive[i] = c_getitembyid(ITEMS.NULL) {
			break;
		}
	}
	/*
	var activesizey = i;
	pos.x += hput;
	pos.y += vput;
	switch currentmode {
		case SHOPMODE.MINE:
			pos.x = max(0, pos.x);
			pos.y = max(0, pos.y);
			if pos.y > ceil(mysizey-pos.x)/4 && !hput {
				currentmode = SHOPMODE.ACTIVES;
				pos.x = 0;
				pos.y = 0;
			} else if pos.x > mysizey-pos.y*4 || pos.x > 3 {
				currentmode = SHOPMODE.YOURS;
				pos.x = 0;
				pos.y = 0;
			}
			if select {
				//c_sellitem(pos.x+pos.y*4);
				textbox_create(global.currentroom.shopkeep.selltext, global.textshop, false);
			}
			break;
		case SHOPMODE.YOURS:
			pos.y = clamp(pos.y, 0, floor((yousizey-pos.x)/4));
			if pos.x < 0 {
				currentmode = SHOPMODE.MINE;
				pos.x = min(mysizey, 3);
				pos.y = 0;
			} else if pos.x > min(yousizey, 3) {
				currentmode = SHOPMODE.STATS;
				pos.x = 0;
				pos.y = 0;
			}
			if select {
				if global.credit >= c_getitembyid(inventory[pos.x+pos.y*4]).quality {
					//c_buyitem(pos.x+pos.y*4);
					textbox_create(global.currentroom.shopkeep.buytext, global.textshop, false);
				} else {
					textbox_create(global.currentroom.shopkeep.cantbuytext, global.textshop, false);
				}
			}
			break;
		case SHOPMODE.ACTIVES:
			pos.y = min(pos.y, 0);
			pos.x = max(0, pos.x);
			if pos.y < 0 {
				currentmode = SHOPMODE.MINE;
				pos.y = 0;
				pos.x = 0;
			} else if pos.x > 2 {
				currentmode = SHOPMODE.YOURS;
				pos.x = 0;
				pos.y = 0;
			}
			if select {
				//c_sellitem(pos.x, true);
			}
			break;
		case SHOPMODE.STATS:
			pos.x = min(pos.x, 0);
			pos.y = clamp(pos.y, 0, 4);
			if pos.x < 0 {
				currentmode = SHOPMODE.YOURS;
				pos.x = min(yousizey, 3);
				pos.y = 0;
			}
			if select {
				switch pos.y {
					case 0:
						c_sellstats(PICKUPS.SHOTPOWER);
						break;
					case 1:
						c_sellstats(PICKUPS.OPTIONS);
						break;
					case 2:
						c_sellstats(PICKUPS.AGILITY);
						break;
					case 3:
						c_sellstats(PICKUPS.RADIUS);
						break;
					case 4:
						c_sellstats(PICKUPS.POC);
						break;
				}
			}
			break;
		
	}
	if back {
		instance_destroy(o_textbox);
		instance_destroy();
		//ISAAC.state = st_standard; //why is this necessary it shouldnt be and wastes a bomb
	}*/
}


