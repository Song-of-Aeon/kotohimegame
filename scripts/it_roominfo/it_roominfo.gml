//gen u items

itemgen({
	ondraw: function() {
		with o_roommanager {
			//exit;
			draw_set_color(c_white);
			var ydraw = 0;
			draw_text(0, (ydraw++)*10, "ROOMINFO:");
			draw_text(0, (ydraw++)*10, rooms[currentroom][currentx].name);
			draw_text(0, (ydraw++)*10, rooms[currentroom][currentx].type);
			draw_text(0, (ydraw++)*10, "stage " + string(global.currentstage+1));
		}
	},
	name: "SQUID GAMES !!",
	description: "display room info",
	tooltip: "i'm so trendy",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS._ROOMINFO);