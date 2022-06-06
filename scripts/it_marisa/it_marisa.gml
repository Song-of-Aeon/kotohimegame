// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
nu hitscan("hakkero", s_hakkerolaser, .5, true, true, false, .4);

itemgen({
	asactive: function(player=global.me, press, held, released) {
		var pow = clamp(ISAAC.shotpower, 1, 4)/6;
		if press {
			if instance_exists(mylaser) {
				instance_destroy(mylaser);
			}
			if instance_exists(mylaser2) {
				instance_destroy(mylaser2);
			}
			mylaser = c_bang(ISAAC.x, ISAAC.y, 90, 1, 0, 999, hsn.hakkero, u, function() {if width < 1 instance_destroy()});
			mylaser.damage += pow;
			if ISAAC.shotpower > 2 {
				mylaser2 = c_bang(ISAAC.x, ISAAC.y, 90, 1, 0, 999, hsn.hakkero, u, function() {if width < 1 instance_destroy()});
				mylaser2.damage += pow;
			}
		}
		if instance_exists(mylaser) {
			mylaser.x = ISAAC.x;
			mylaser.y = ISAAC.y;
			if held {
				mylaser.width = lerp(mylaser.width, mylaser.damage*16*3, .1);
				mylaser.duration = 999;
			} else {
				mylaser.width = lerp(mylaser.width, -.5, .1);
			}
		}
		if instance_exists(mylaser2) {
			mylaser2.x = ISAAC.x;
			mylaser2.y = ISAAC.y;
			if held {
				mylaser2.width = lerp(mylaser2.width, mylaser2.damage*5*3, .1);
				mylaser2.duration = 999;
			} else {
				mylaser2.width = lerp(mylaser2.width, -.5, .1);
			}
		}
	},
	onstats: function() {
		c_lowpower(4);
	},
	mylaser: noone,
	mylaser2: noone,
	//myhooks: {onpickup: true},
	name: "Mini-hakkero",
	description: "Laser shot.",
	tooltip: "It's okay if it's stolen from <i>her</i>, right?",
	sprite: s_minihakkero,
	quality: 9,
	usage: ITTYPE.ACTIVE,
	deathbombable: false,
	activetype: ACTIVES.SHOT,
	powerdata: 4,
	rangedata: 2,
	difficultydata: 3,
}, ITEMS.MARISASHOT);

