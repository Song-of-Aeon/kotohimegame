// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//gc_enable(false);
itemgen({
	asactive: function(player=global.me, press, held) {
		if charge >= chargemax && press {
			using = true;
			ISAAC.inv = 20;
			charge = 0;
		}
		if !(ISAAC.inv && using) {
			using = false;
		}
		if using {
			c_clearrect(0, player.y-player.inv, 400, player.y+player.inv);
			c_clearrect(player.x-player.inv, 0, player.x+player.inv, 400);
		}
	},
	ongraze: function(player=global.me) {
		charge++;
	},
	ondraw: function(player=global.me) {
		if using {
			draw_set_color(c_black);
			draw_rectangle(0, player.y-player.inv, 400, player.y+player.inv, false);
			draw_rectangle(player.x-player.inv, 0, player.x+player.inv, 400, false);
			draw_set_color(c_white);
			draw_rectangle(0, player.y-player.inv, 400, player.y+player.inv, true);
			draw_rectangle(player.x-player.inv, 0, player.x+player.inv, 400, true);
		}
		if charge < chargemax {
			draw_set_color(c_silver);
		} else {
			draw_set_color(c_yellow);
		}
		//draw_rectangle(10, 340, 10+clamp(charge, 0, chargemax)*5, 350, false);
		draw_set_color(c_white);
	},
	//myhooks: {ongraze: true, ondraw: true},
	name: "Ink-black Nanomachines",
	description: "Clears in a + shape from you.",
	tooltip: "Science? Magic? Who knows...",
	sprite: s_vertexemit,
	quality: 8,
	usage: ITTYPE.ACTIVE,
	
	charge: 20,
	chargemax: 20,
	deathbombable: false,
	used: false,
	using: true,
	activetype: ACTIVES.FLASHBOMB
}, ITEMS.VERTEXEMIT);