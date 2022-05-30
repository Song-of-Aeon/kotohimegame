//gen u items

itemgen({
	onpickup: function(player=global.me) {
		x = player.x;
		y = player.y
	},
	onstep: function(player=global.me) {
		if player.x >= global.gw/2 {
			x = lerp(x, player.x-24, .1);
		} else {
			x = lerp(x, player.x+24, .1);
		}
		y = lerp(y, player.y+24, .1);
	},
	ondraw: function() {
		draw_sprite_ext(s_yforward, gc/10, x, y, 1.3, 1.3, 0, c_white, 1);
	},
	name: "Yumemi Okazaki",
	description: "YUMEMI UP!!",
	tooltip: "Chiyuri, I turned myself into an item! I'm item Yumemi!!!!!!!!!!",
	sprite: s_impossibleyumemi,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	x: 0,
	y: 0,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.YUMEMEY);