//gen u items

itemgen({
	onstep: function(player=global.me) {
		
	},
	asactive: function(player=global.me, press, held, released) {
		
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
}, ITEMS.SIZE);