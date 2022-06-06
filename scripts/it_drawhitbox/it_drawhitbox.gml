//gen u items

itemgen({
	ondraw: function(player=global.me) {
		with o_bullet {
			draw_set_color(c_red);
			draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
			//draw_hitbox(id);
		}
	},
	name: "bulbox",
	description: "show bullet hitboxes",
	tooltip: "probably runs like piss",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.BULBOX);