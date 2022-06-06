//gen u items

itemgen({
	onpickup: function(player=global.me) {
		player.hp++;
		c_removeitem(ITEMS.HEAL, 1);
	},
	name: "healitem",
	description: "HP up",
	tooltip: "om nom nom",
	sprite: s_heal,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.HEAL);