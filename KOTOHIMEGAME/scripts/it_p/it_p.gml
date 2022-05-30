var meanbullets = {
	onpickup: function(player=global.me) {
		c_addpickup(PICKUPS.SHOTPOWER, 999);
		c_removeitem(ITEMS.LETTERP, 1);
	},
	//myhooks: {onstats: true},
	name: "The Letter P",
	description: "Gain max power.",
	tooltip: "P for parking.\n...Power",
	sprite: s_p,
	quality: 3,
	usage: ITTYPE.PASSIVE,
}
itemgen(meanbullets,ITEMS.LETTERP);