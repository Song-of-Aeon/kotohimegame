//gen u items

itemgen({
	ondraw: function(player=global.me) {
		draw_set_color(c_black);
		draw_rectangle(-999, -999, 999, 999, false);
		ISAAC.sprite_index = s_null;
	},
	name: "Template",
	description: "Template up",
	tooltip: "emo friday night funkin mod",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.PASSIVE,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.HIDE);