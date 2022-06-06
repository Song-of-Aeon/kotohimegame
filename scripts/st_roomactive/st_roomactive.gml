function st_roomactive() {
	
	//log(rooms[currentroom][mappos.x].events[timeout]);
	//log(5/0);
	//var bruh = 100084;
	//bruh();
	//script_execute(rooms[currentroom][mappos.x].events[timeout]);
		//log(rooms[currentroom][currentx].type);
	if !instance_exists(o_textbox) {
		if !delay {
			var shits = rooms[currentroom][currentx].step();
			//log(shits);
			if shits != 0 && shits != undefined {
				c_endpattern(shits);
			}
		} else {
			delay--;
			if !delay {c_endpattern()}
		}
	}
	//100084();
	//log(rooms[currentroom][currentx].type);
	switch rooms[currentroom][currentx].type {
		case ROOMTYPE.CIRCLE:
		case ROOMTYPE.TIME:
			//var bruh = rooms[currentroom][mappos.x].events[timeout];
			//bruh();
			//log(timeout);
			//timeout--;
			/*if timeout <= 0 {
				//c_resetroom(rooms[currentroom][mappos.x]);
				go = false;
				c_cleartheroom(true);
				//c_spawnitem(150, 155, rooms[currentroom][mappos.x].pool, 0);
				c_clearradius(155, 180, 500, 500);
				c_clearenemies();
			}*/
			//log("I AM A TIME");
			break;
		case ROOMTYPE.BLACK:
		case ROOMTYPE.SHOP:
			if !madeshop {
				log("MAKINGSHOP");
				c_generateshop();
				log("MADESHOP");
				madeshop = true;
			}
			//if !instance_exists(o_shopmanager) {
			//log("i am actually a shop");
				c_cleartheroom(false);
			//}
			break;
		case ROOMTYPE.MINIBOSS:
		case ROOMTYPE.BOSS:
			if !instance_exists(o_boss) {
				//c_spawnitem(150, 155, rooms[currentroom][mappos.x].pool, 1);
				//log("i am actually a boss");
				c_cleartheroom(true);
			}
			break;
		case ROOMTYPE.GENERAL:
		case ROOMTYPE.WARP:
			//log("i am actually a nothing");
			c_cleartheroom(false);
			break;
	}
}

function c_cleartheroom(dohook) {
		with o_roommanager {
		log("cleareventing");
		rooms[currentroom][currentx].clear();
		log("clearevented");
		if dohook {
			if c_dohook(ISAAC.hooks.onroomclear) exit;
		}
		if !instance_exists(o_textbox) {
			ISAAC.state = st_standard;
		}
		switch rooms[currentroom][currentx].type {
			case ROOMTYPE.CIRCLE:
				c_ircle(global.gw/2, global.gh/2, 40, function() {
					var dude = c_spawnspecialitem(x, y, ITEMS.HEAL);
					dude.pulled = true;
				});
			case ROOMTYPE.TIME:
			case ROOMTYPE.WARP:
				//state = st_map;
				//drawstate = st_mapdraw;
				go = true;
				
			default:
				state = st_roomclear;
				drawstate = st_drawclear;
				break;
		}
		//c_spawnspecialitem(100, 100, ITEMS.HEAL);
		//log("roomcleared");
		
		madeboss = false;
		madeitem = false;
		madeshop = false;
		rooms[currentroom][currentx].cleared = true;
	}
}

function c_uncleartheroom() { //NOT DONE
		with o_roommanager {
		log("cleareventing");
		rooms[currentroom][currentx].create();
		log("clearevented");
		if dohook {
			if c_dohook(ISAAC.hooks.onroomclear) exit;
		}
		if !instance_exists(o_textbox) {
			ISAAC.state = st_standard;
		}
		if rooms[currentroom][currentx].type == ROOMTYPE.CIRCLE {
			c_ircle(global.gw/2, global.gh/2, 40, function() {
				c_spawnspecialitem(x, y, ITEMS.HEAL);
			});
		}
		//c_spawnspecialitem(100, 100, ITEMS.HEAL);
		//log("roomcleared");
		state = st_roomclear;
		drawstate = st_drawclear;
		madeboss = false;
		madeitem = false;
		madeshop = false;
		rooms[currentroom][currentx].cleared = true;
	}
}