//gen u items
nu bullet("vengeance", s_bullet, .8, true, true, false, .4);

itemgen({
	ongraze: function(bullet_) {
		var dude = instance_nearest(bullet_.x, bullet_.y, o_shooter);
		c_shoot(bullet_.x, bullet_.y, 3, point_direction(bullet_.x, bullet_.y, dude.x, dude.y), bul.vengeance);
	},
	name: "graze return",
	description: "graze bullets and shoot one at the enemies",
	tooltip: "vengeance",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.PASSIVE,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.GRAZERETURN);