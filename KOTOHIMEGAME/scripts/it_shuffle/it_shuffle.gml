//gen u items

itemgen({
	asactive: function(player=global.me, press, held, released) {
		if press && charge >= chargereq && instance_exists(o_boss) {
			with o_boss {
				array_insert(patterns, currentpattern, c_generatespell(global.aunnspellnerf), patterns); //ITS PROOF OF CONCEPT TAJKE IT EASY
			}
			charge -= chargereq;
			c_spellchange(false);
			c_maidenpit(20);
		}
	},
	onroomclear: function(player=global.me) {
		charge++;
	},
	name: "Trickery Sign \"Double take\"", //trickery sign
	description: "Changes an ongoing boss' pattern",
	tooltip: "Shuffle!",
	sprite: s_shuffle,
	quality: 5,
	usage: ITTYPE.ACTIVE,
	
	charge: 9,
	chargemax: 9,
	chargereq: 3,
	deathbombable: false,
	used: false,
	powerdata: 0,
	capacitydata: 3,
	utilitydata: 4,
	activetype: ACTIVES.BOMB
}, ITEMS.SHUFFLESPELL);

function c_generatespell(selection, deck=[]) {
	var shits;
		do {
			shits = selection[irandom(array_length(selection)-1)];
		} until !array_contains(deck, shits);
	return shits;
}