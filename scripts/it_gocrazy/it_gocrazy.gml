//gen u items

itemgen({
	onstep: function(dude) {
		dude.x += irandom(5)-2.5;
		dude.y += irandom(5)-2.5;
		//log("IM MOVING");
	},
	ondie: function(dude) {
		with dude c_shoot(x, y, 5, point_me(), bul.point);
	},
	name: "go crazy",
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
	activetype: ACTIVES.NULL
}, ITEMS.GOCRAZY);