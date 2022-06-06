// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
itemgen({
	asactive: function(player=global.me, press, held) {
		if charge >= chargereq && press {
			player.life--;
			charge = 0;
			var myguy = c_generateitem(c_getroom().pool);
			c_additem(myguy);
			log(myguy);
			c_maidenpit(20);
		}
		//log(player.itemmemory[ITEMS.JOURNAL][0].val1);
	},
	onroomclear: function(player=global.me) {
		charge++;
	},
	//myhooks: {onroomclear: true, ondraw: true},
	seed: new RNG(global.seed),
	name: "Incarnation \"Plagiarized Journal\"",
	description: "Sacrifice a life for an item.",
	tooltip: "Leatherbound sin",
	sprite: s_fortuneteller,
	quality: 5,
	usage: ITTYPE.ACTIVE,
	charge: 6,
	chargereq: 6,
	chargemax: 6,
	deathbombable: false,
	activetype: ACTIVES.BOMB,
	powerdata: 0,
	capacitydata: 1,
	utilitydata: 4,
}, ITEMS.JOURNAL);
