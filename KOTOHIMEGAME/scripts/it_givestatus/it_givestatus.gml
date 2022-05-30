//gen u items

itemgen({
	asactive: function(player=global.me, press, held, released) {
		if press {
			with o_shooter {
				c_addenemyitem(id, ITEMS.GOCRAZY);
			}
		}
	},
	name: "givestatus",
	description: "Template up",
	tooltip: "emo friday night funkin mod",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.FREE
}, ITEMS.GIVESTATUS);