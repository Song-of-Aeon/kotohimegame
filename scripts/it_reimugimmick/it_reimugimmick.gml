//gen u items

itemgen({
	onstep: function(player=global.me) {
		
	},
	asactive: function(player=global.me, press, held, released) {
		
	},
	name: "Breakfast",
	description: "HP up",
	tooltip: "Twenty-four",
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